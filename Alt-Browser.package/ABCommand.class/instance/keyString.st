accessing
keyString
	| c |
	^ (c := self keystroke) isNil
		ifFalse: [ c asString ]
		ifTrue: [ nil ]