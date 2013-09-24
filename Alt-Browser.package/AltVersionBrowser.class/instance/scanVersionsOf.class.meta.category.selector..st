copy and paste
scanVersionsOf: method class: aClass meta: meta category: aCategory selector: aSelector
	"Do not ask the changeset, but the repository if this is a gitfiletree:// repository."

	"Write this code so that it is independent of the presence of MonticelloFileTree-Git; it will fail anyway and drop back on the old version browser."

	| rpackage aMCWorkingCopy repository mcMethodDefinition allFileNames gitRepoClass gitReaderClass |
	(Smalltalk globals includesKey: #MCFileTreeGitRepository)
		ifTrue: [ 
			gitRepoClass := Smalltalk globals at: #MCFileTreeGitRepository.
			gitReaderClass := Smalltalk globals at: #MCFileTreeGitStReader ]
		ifFalse: [ NotFound signal ].
	selectorOfMethod := aSelector.
	currentCompiledMethod := method.
	classOfMethod := meta
		ifTrue: [ aClass class ]
		ifFalse: [ aClass ].
	changeList := OrderedCollection new.
	list := OrderedCollection new.
	self addedChangeRecord
		ifNotNil: [ :change | 
			self
				addItem: change
				text:
					('{1} (in {2})' translated
						format:
							{(change timeStamp).
							(change fileName)}) ].
	rpackage := method package.
	aMCWorkingCopy := MCWorkingCopy allManagers
		detect: [ :wc | (wc package packageSet packages detect: [ :rp | rp == rpackage ] ifNone: [  ]) notNil ].
	repository := aMCWorkingCopy repositoryGroup repositories detect: [ :repo | repo isKindOf: gitRepoClass ].
	allFileNames := repository allFileNames.
	mcMethodDefinition := method methodReference asMCMethodDefinition.
	{mcMethodDefinition}
		,
			((((repository gitVersionsForDefinition: mcMethodDefinition in: aMCWorkingCopy packageName)
				collect: [ :commitID | 
					((gitReaderClass on: repository directory fileName: aMCWorkingCopy packageName , repository packageExtension)
						commitID: commitID;
						info: (allFileNames detect: [ :en | en commitID = commitID ]) info) loadDefinitionFor: mcMethodDefinition ])
				reject: [ :mcD | mcD isNil or: [ mcD isEmpty ] ]) collect: [ :e | e first ])
		do: [ :aMCMethodDefinition | 
			(changeList includes: aMCMethodDefinition)
				ifFalse: [ 
					self
						addItem: aMCMethodDefinition
						text:
							aMCMethodDefinition timeStamp , ' ' , aMCMethodDefinition className
								,
									(aMCMethodDefinition classIsMeta
										ifTrue: [ ' class ' ]
										ifFalse: [ ' ' ]) , aMCMethodDefinition selector , ' {' , aMCMethodDefinition category , '}' ] ].
	listSelections := Array new: list size withAll: false