event handling
click: event
	| rowIndex |
	"perform the click"
	rowIndex := self container rowIndexContainingPoint: event cursorPoint.
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