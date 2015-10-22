private
calculateMaxVisibleRows
	"Answer the maximal number of rows to shown in list"

	self calculateExactVisibleRows = self calculateMinVisibleRows
		ifTrue: [ ^ self calculateExactVisibleRows + 1 ]
		ifFalse: [ ^ self calculateExactVisibleRows ]