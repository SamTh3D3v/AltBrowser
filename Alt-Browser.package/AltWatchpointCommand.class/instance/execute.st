execution
execute
	astNode hasWatchpoint
		ifFalse:
			[ (UIManager default request: 'Name for Watchpoint')
				ifNotNil: [ :tagname | Watchpoint in: astNode named: tagname ] ]
		ifTrue: [ Watchpoint removeFrom: astNode ]