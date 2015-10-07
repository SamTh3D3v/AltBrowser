accessing
rowIndexContainingPoint: aPoint
	self exposedItems
		keysAndValuesDo:
			[ :rowIndex :row | 
			(row bounds containsPoint: aPoint)
				ifTrue: [ ^ rowIndex ] ].
	^ nil