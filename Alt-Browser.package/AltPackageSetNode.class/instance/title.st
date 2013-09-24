accessing
title
	(item isKindOf: MCWorkingCopy)
		ifTrue: [ ^ self item packageNameWithStar ].
	^ item printString