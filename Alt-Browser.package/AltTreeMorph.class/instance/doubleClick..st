event handling
doubleClick: event
	(self container rowIndexContainingPoint: event cursorPoint)
		ifNotNil:
			[ :rowIndex | (self model at: rowIndex) doubleClickIn: self ]