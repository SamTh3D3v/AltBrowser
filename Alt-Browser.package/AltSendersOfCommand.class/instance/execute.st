execution
execute
	"Execute an all senders of."

	| aSelector anEnvironment classDict specialFlag specialByte |
	anEnvironment := requestor rbEnvironment isSelectorEnvironment
		ifTrue: [ requestor rbEnvironment environment ]
		ifFalse: [ requestor rbEnvironment ].
	aSelector := requestor selectedNode item selector.
	anEnvironment := requestor rbEnvironment.
	classDict := IdentityDictionary new.
	specialFlag := Smalltalk hasSpecialSelector: aSelector ifTrueSetByte: [ :byte | specialByte := byte ].
	anEnvironment
		classesAndMetaClassesDo: [ :class | 
			((class thoroughWhichSelectorsReferTo: aSelector special: specialFlag byte: specialByte)
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