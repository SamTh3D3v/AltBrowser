printing
asString
	(item isKindOf: MCWorkingCopy)
		ifTrue: [ ^ self item packageName ].
	^ item printString