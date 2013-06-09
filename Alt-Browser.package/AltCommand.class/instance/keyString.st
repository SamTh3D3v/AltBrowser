accessing
keyString
	| c |
	^ (c := self keystroke) isNil
		ifFalse: [ c asString copyWithout: Character space ]
		ifTrue: [ nil ]