printing
asString
	(item isKindOf: MCWorkingCopy)
		ifTrue: [^ self item packageNameWithStar ].
	^ item printString