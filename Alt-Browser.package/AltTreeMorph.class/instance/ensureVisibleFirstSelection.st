private
ensureVisibleFirstSelection
	| rowIndex |
	self hasSelection
		ifFalse: [ ^ self ].
	rowIndex := self selectedRowIndex.
	(self container isRowIndexFullyVisible: rowIndex)
		ifFalse:
			[ self container exposedItems ifNil: [ ^ self ].
			self moveShowIndexTo: rowIndex ].
	(self container isItemFullyVisible: rowIndex)
		ifFalse:
			[ (self container exposedItems at: rowIndex ifAbsent: [ ^ self ])
				in:
					[ :morph | 
					| delta |
					delta := self container effectiveWidth - self container width.
					delta isZero
						ifTrue: [ ^ self ].
					self horizontalScrollBar
						value:
							(((morph submorphs last left - morph left asFloat) / delta min: 1.0)
								max: 0.0) ] ]	"Do something there"