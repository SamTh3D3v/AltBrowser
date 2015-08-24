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
			((class thoroughWhichSelectorsReferTo: aSelector)
				select: [ :selector | anEnvironment includesSelector: selector in: class ])
				in: [ :selectors | 
					selectors isEmpty
						ifFalse: [ classDict at: class put: selectors asIdentitySet ] ] ].
	(AltBrowser
		fullOnEnvironment:
			((RBSelectorEnvironment onEnvironment: anEnvironment)
				on: classDict;
				label: 'References to: ' , aSelector;
				searchStrings: (Array with: aSelector);
				yourself)) expandAllNodes