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
	classDict isEmpty ifTrue: [ ^ self inform: 'No implementors of ', aSelector, ' found.' ].
	(requestor class
		openOnEnvironment:
			((RBSelectorEnvironment onEnvironment: anEnvironment)
				on: classDict;
				label: 'Implementors of ' , aSelector;
				yourself)) expandAllNodes