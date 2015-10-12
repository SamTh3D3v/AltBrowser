event handling
mouseMove: event
	event isDraggingEvent
		ifFalse: [ ^ self ].
	(self container rowIndexContainingPoint: event position)
		ifNotNil:
			[ :rowIndex | 
			((self model at: rowIndex)
				wantsDroppedElement: event hand firstSubmorph passenger)
				ifTrue: [ dropIndex := rowIndex ].
			self refresh ]