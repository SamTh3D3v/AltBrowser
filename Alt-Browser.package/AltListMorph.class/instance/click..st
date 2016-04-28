event handling
click: anEvent
	| index |
	index := self viewport rowIndexContainingPoint: anEvent cursorPoint.
	index
		ifNotNil: [ self selectRowIndex: index ]
		ifNil: [ self selectRowIndex: 0 ].
	(anEvent yellowButtonPressed and: [ anEvent controlKeyPressed not ])
		ifTrue: [ self showMenuForRowIndex: index ]