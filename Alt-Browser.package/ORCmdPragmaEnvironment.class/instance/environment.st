accessing
environment
	| selectors selector |
	selectors := Set new.
	super environment classesAndSelectorsDo: [ :class :selec |
		(class compiledMethodAt: selec) pragmas
			do: [ :pragma | selectors add: pragma keyword ] ].
	selectors := selectors asSortedCollection.
	selectors isEmpty
		ifFalse: [ selector := selectors first ].
	selector := OBCmdBrowseList
		selectSymbol: 'Choose Sender'
		default: selector proposed: selectors.
	selector isNil
		ifTrue: [ ^ self uiCancellationError ].
	^ (super environment referencesTo: selector)
		label: 'Senders of ' , selector printString;
		yourself