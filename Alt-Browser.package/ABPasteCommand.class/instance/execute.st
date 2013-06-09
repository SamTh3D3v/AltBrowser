execution
execute
	"Get the temporary from the AltBrowser and try a move (a drop, maybe ?)"

	(requestor selectedNode item dropItem: AltBrowserModel temporary) isNil
		ifFalse: [ AltBrowserModel temporary: nil ]