event handling
click: event
	| index |
	index := self viewport rowIndexContainingPoint: event cursorPoint.
	index
		ifNotNil: [ self selectRowIndex: index ]
		ifNil: [ self selectRowIndex: nil ].

	"check for right click (menu)"
	(event yellowButtonPressed
		and: [ (self commandOrCrontrolKeyPressed: event) not ])
		ifTrue: [ self showMenuForPosition: event cursorPoint ]