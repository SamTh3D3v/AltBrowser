accessing
keyString
	| c |
	^ (c := self keystroke) isNil
		ifFalse: [ 'Ctrl-' , c asString ]
		ifTrue: [nil]