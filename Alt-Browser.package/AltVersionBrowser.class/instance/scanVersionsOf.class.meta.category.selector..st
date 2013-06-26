copy and paste
scanVersionsOf: method class: aClass meta: meta category: aCategory selector: aSelector
	"Do not ask the changeset, but the repository if this is a gitfiletree:// repository."

	| rpackage aMCWorkingCopy repository mcMethodDefinition |
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
	repository := aMCWorkingCopy repositoryGroup repositories detect: [ :repo | repo isKindOf: MCFileTreeGitRepository ].
	mcMethodDefinition := method methodReference asMCMethodDefinition.
	{mcMethodDefinition}
		,
			((((repository gitVersionsForDefinition: mcMethodDefinition in: aMCWorkingCopy packageName)
				collect: [ :commitID | 
					((MCFileTreeGitStReader on: repository directory fileName: aMCWorkingCopy packageName , repository packageExtension)
						commitID: commitID) loadDefinitionFor: mcMethodDefinition ]) reject: [ :mcD | mcD isNil or: [ mcD isEmpty ] ])
				collect: [ :e | e first ])
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