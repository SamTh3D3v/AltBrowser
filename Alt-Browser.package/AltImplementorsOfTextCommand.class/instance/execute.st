execution
execute
	| aSelector anEnvironment classDict |
	anEnvironment := requestor rbEnvironment isSelectorEnvironment
		ifTrue: [ requestor rbEnvironment environment ]
		ifFalse: [ requestor rbEnvironment ].
	aSelector := self node selector.
	classDict := IdentityDictionary new.
	anEnvironment
		classesAndMetaClassesDo: [ :class | 
			((class includesLocalSelector: aSelector) and: [ anEnvironment includesSelector: aSelector in: class ])
				ifTrue: [ classDict at: class put: {aSelector} ] ].
	(AltBrowser
		openOnEnvironment:
			((RBSelectorEnvironment onEnvironment: anEnvironment)
				on: classDict;
				label: 'Implementors of ' , aSelector;
				yourself)) expandAllNodes