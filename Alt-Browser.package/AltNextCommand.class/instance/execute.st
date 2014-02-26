execution
execute
	[ requestor selectPathForAbstractItem: requestor history next key item ]
		whileFalse: [ 
			requestor history hasNext
				ifFalse: [ ^ self ] ]