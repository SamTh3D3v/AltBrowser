execution
execute
	"Get the temporary from the AltBrowser and try a move (a drop, maybe ?)"

	((requestor selectedNode item acceptDropItem: requestor class temporary)
		and: [ (requestor selectedNode item dropItem: requestor class temporary) isNil ])
		ifFalse: [ requestor class temporary: nil ]