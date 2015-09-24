private
toggleRowIndex: rowIndex
	((self morph selectedRowIndexes includes: rowIndex)
		and:
			[ self morph selectedRowIndexes size = 1	"just one selected" ])
		ifTrue: [ self morph selectRowIndexes: #() ]
		ifFalse:
			[ 
			self morph selectRowIndex: rowIndex.
			self morph highlightRowIndexes: #() ]