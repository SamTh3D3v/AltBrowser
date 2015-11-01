execution
execute
	"Execute an all senders of."

	| aSelector anEnvironment classDict |
	anEnvironment := requestor rbEnvironment isSelectorEnvironment
		ifTrue: [ requestor rbEnvironment environment ]
		ifFalse: [ requestor rbEnvironment ].
	aSelector := requestor selectedNode item selector.
	classDict := IdentityDictionary new.
	anEnvironment
		classesAndMetaClassesDo:
			[ :class | 
			((class thoroughWhichSelectorsReferTo: aSelector)
				select: [ :selector | anEnvironment includesSelector: selector in: class ])
				in:
					[ :selectors | 
					selectors isEmpty
						ifFalse: [ classDict at: class put: selectors asIdentitySet ] ] ].
	classDict isEmpty
		ifTrue: [ ^ self inform: aSelector, ': no sender found' ].
	(requestor class
		openOnEnvironment:
			((RBSelectorEnvironment onEnvironment: anEnvironment)
				on: classDict;
				label: 'References to: ' , aSelector;
				searchStrings: (Array with: aSelector);
				yourself)) expandAllNodes