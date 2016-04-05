accessing
rowIndexContainingPoint: aPoint
	"Perfect. This code handles just like I would like it to."

	self exposedItems
		keysAndValuesDo:
			[ :rowIndex :row | 
			(row bounds containsPoint: aPoint)
				ifTrue: [ ^ rowIndex ] ].
	^ nil