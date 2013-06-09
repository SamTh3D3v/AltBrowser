execution
execute
	"Get the temporary from the AltBrowser and try a move (a drop, maybe ?)"

	(requestor selectedNode item dropItem: AltBrowser temporary) isNil
		ifFalse: [ AltBrowser temporary: nil ]