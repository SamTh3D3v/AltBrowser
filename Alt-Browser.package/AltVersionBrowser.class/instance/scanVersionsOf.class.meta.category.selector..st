init & update
scanVersionsOf: method class: aClass meta: meta category: aCategory selector: aSelector
	"Do not ask the changeset, but the repository if this is a gitfiletree:// repository."

	"Write this code so that it is independent of the presence of MonticelloFileTree-Git; it will fail anyway and drop back on the old version browser."

	"Algorithm: if anything fail (no git repository for example), a NotFound error is generated. If needed, a NotFound error is raised."

	| rpackage aMCWorkingCopy repository mcMethodDefinition allFileNames gitRepoClass gitReaderClass |
	(Smalltalk globals includesKey: #MCFileTreeGitRepository)
		ifTrue: [ 
			gitRepoClass := Smalltalk globals at: #MCFileTreeGitRepository.
			gitReaderClass := Smalltalk globals at: #MCFileTreeGitStReader ]
		ifFalse: [ 
			^ super
				scanVersionsOf: method
				class: aClass
				meta: meta
				category: aCategory
				selector: aSelector ].
	rpackage := method package.
	aMCWorkingCopy := MCWorkingCopy allManagers detect: [ :wc | wc package name = rpackage name ].
	repository := aMCWorkingCopy repositoryGroup repositories detect: [ :repo | repo isKindOf: gitRepoClass ].
	allFileNames := repository allFileNames.
	mcMethodDefinition := method methodReference asMCMethodDefinition.
	^ (OrderedCollection
		streamContents: [ :stream | 
			stream
				nextPutAll:
						(ChangeSet
								scanVersionsOf: method
								class: aClass
								meta: meta
								category: aCategory
								selector: aSelector);
				nextPutAll:
						((((repository gitVersionsForDefinition: mcMethodDefinition in: aMCWorkingCopy packageName)
								collect: [ :commitID | 
									((gitReaderClass on: repository directory fileName: aMCWorkingCopy packageName , repository packageExtension)
										commitID: commitID;
										info: (allFileNames detect: [ :en | en commitID = commitID ]) info;
										yourself) loadDefinitionFor: mcMethodDefinition ]) reject: [ :mcD | mcD isNil or: [ mcD isEmpty ] ])
								collect: [ :e | e first ]) ])
		collectWithIndex: [ :c :i | 
			| rg |
			rg := c asRingDefinition.
			rg annotationNamed: #versionIndex put: i ]