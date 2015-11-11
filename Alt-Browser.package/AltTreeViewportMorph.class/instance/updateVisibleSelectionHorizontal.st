updating
updateVisibleSelectionHorizontal
	"This one is done after updating the items or the rows."

	| rowIndex |
	self owner hasSelection
		ifFalse: [ ^ self ].
	rowIndex := self owner selectedRowIndex.
	(self isItemFullyVisible: rowIndex)
		ifFalse:
			[ (self exposedItems at: rowIndex ifAbsent: [ ^ self ])
				in:
					[ :morph | 
					| delta |
					delta := self effectiveWidth - self width.
					delta isZero
						ifTrue: [ ^ self ].
					self owner horizontalScrollBar
						value:
							(((morph submorphs last left - morph left asFloat) / delta min: 1.0)
								max: 0.0) ] ]