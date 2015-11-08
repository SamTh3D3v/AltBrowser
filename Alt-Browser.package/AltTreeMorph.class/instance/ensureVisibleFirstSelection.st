private
ensureVisibleFirstSelection
	"Fairly complex. Will refactor it."

	| rowIndex |
	self hasSelection
		ifFalse: [ ^ self ].
	rowIndex := self selectedRowIndex.
	self viewport
		in:
			[ :v | 
			(v isRowIndexFullyVisible: rowIndex)
				ifFalse:
					[ v exposedItems ifNil: [ ^ self ].
					self moveVisibleIndexTo: rowIndex ].
			(v isItemFullyVisible: rowIndex)
				ifFalse:
					[ (v exposedItems at: rowIndex ifAbsent: [ ^ self ])
						in:
							[ :morph | 
							| delta |
							delta := v effectiveWidth - v width.
							delta isZero
								ifTrue: [ ^ self ].
							self horizontalScrollBar
								value:
									(((morph submorphs last left - morph left asFloat) / delta min: 1.0)
										max: 0.0) ] ] ]