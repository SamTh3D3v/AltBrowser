accessing
environment
	| selectors selector |
	selectors := target hasSelector
		ifTrue: [ target selectorAndMessages collect: [ :each | each name ] ]
		ifFalse: [ target theClass selectors ].
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