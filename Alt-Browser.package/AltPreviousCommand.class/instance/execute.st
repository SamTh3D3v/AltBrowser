execution
execute
	[ requestor selectPathForAbstractItem: requestor history previous key item ]
		whileFalse: [ 
			requestor history hasPrevious
				ifFalse: [ ^ self ] ]