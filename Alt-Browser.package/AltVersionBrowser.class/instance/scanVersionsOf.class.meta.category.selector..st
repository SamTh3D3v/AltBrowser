copy and paste
scanVersionsOf: method class: aClass meta: meta category: aCategory selector: aSelector
	"Do not ask the changeset, but the repository if this is a gitfiletree:// repository."

	"Write this code so that it is independent of the presence of MonticelloFileTree-Git; it will fail anyway and drop back on the old version browser."

	"Algorithm: if anything fail (no git repository for example), a NotFound error is generated. If needed, a NotFound error is raised."

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
	aMCWorkingCopy := MCWorkingCopy allManagers detect: [ :wc | wc package name = rpackage name ].
	repository := aMCWorkingCopy repositoryGroup repositories detect: [ :repo | repo isKindOf: gitRepoClass ].
	allFileNames := repository allFileNames.
	mcMethodDefinition := method methodReference asMCMethodDefinition.
	(OrderedCollection
		streamContents: [ :stream | 
			stream
				nextPut: mcMethodDefinition;
				nextPutAll:
						((((repository gitVersionsForDefinition: mcMethodDefinition in: aMCWorkingCopy packageName)
								collect: [ :commitID | 
									((gitReaderClass on: repository directory fileName: aMCWorkingCopy packageName , repository packageExtension)
										commitID: commitID;
										info: (allFileNames detect: [ :en | en commitID = commitID ]) info;
										yourself) loadDefinitionFor: mcMethodDefinition ])
								reject: [ :mcD | mcD isNil or: [ mcD isEmpty ] ]) collect: [ :e | e first ]) ])
		do: [ :aMCMethodDefinition | 
			(changeList includes: aMCMethodDefinition)
				ifFalse: [ 
					self
						addItem: aMCMethodDefinition
						text:
							(String
								streamContents: [ :stream | 
									stream
										nextPutAll: aMCMethodDefinition timeStamp;
										nextPut: $ ;
										nextPutAll: aMCMethodDefinition className;
										nextPutAll:
												(aMCMethodDefinition classIsMeta
														ifTrue: [ ' class ' ]
														ifFalse: [ ' ' ]);
										nextPutAll: aMCMethodDefinition selector;
										nextPutAll: ' {';
										nextPutAll: aMCMethodDefinition category;
										nextPut: $} ]) ] ].
	listSelections := Array new: list size withAll: false