event handling
doubleClick: event
	(self viewport rowIndexContainingPoint: event cursorPoint)
		ifNotNil: [ :rowIndex | (self model at: rowIndex) doubleClickIn: self ]