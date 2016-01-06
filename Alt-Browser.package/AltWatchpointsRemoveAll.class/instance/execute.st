execution
execute
	Watchpoint removeAll.
	Smalltalk garbageCollect.
	AltBrowser aNodeToRebuilt: requestor selectedNode