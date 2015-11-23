updating
refresh
	"Refreshes all internal values (forces an invalidate of all subviews)"

	| delta |
	selectedRowIndexes := nil.
	self viewport refresh.
	delta := 1.0 / self viewport modelSize.
	self verticalScrollBar scrollDelta isZero
		ifFalse:
			[ self verticalScrollBar
				value:
					self verticalScrollBar value / self verticalScrollBar scrollDelta
						* delta ]