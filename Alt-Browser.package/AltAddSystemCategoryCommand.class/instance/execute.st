execution
execute
	| name sItem found |
	sItem := requestor selectedNode item.
	name := UIManager default
		request: 'Enter the new category name:'
		initialAnswer: sItem packageName.
	name notNil
		ifTrue: [ Smalltalk globals organization addCategory: name ].
	requestor class rootItems
		do:
			[ :each | 
			| res |
			(res := each findClassCategory: name) notNil
				ifTrue: [ found := res ] ].
	found isNil
		ifTrue: [ ^ self ].
	requestor selectPathForAbstractItem: found