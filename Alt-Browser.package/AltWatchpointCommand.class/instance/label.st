accessing
label
	^ astNode hasWatchpoint
		ifTrue: [ 'Remove that watchpoint' ]
		ifFalse: [ 'Add a Watchpoint' ]