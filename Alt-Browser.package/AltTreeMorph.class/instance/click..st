event handling
click: event
	| rowIndex |
	rowIndex := self viewport rowIndexContainingPoint: event cursorPoint.
	rowIndex
		ifNotNil:
			[ (self selectedRowIndexes includes: rowIndex)
				ifTrue: [ self selectRowIndexes: #() ]
				ifFalse: [ self selectRowIndex: rowIndex ] ]
		ifNil: [ self selectRowIndexes: #() ].

	"check for right click (menu)"
	(event yellowButtonPressed
		and: [ (self commandOrCrontrolKeyPressed: event) not ])
		ifTrue: [ self showMenuForPosition: event cursorPoint ]