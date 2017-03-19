execution graph
context: nid
	"Do add a level if we enter a process; exit a level too."

	process == Processor activeProcess 
		ifFalse: 
			[| n |
			self exitLevel.
			process := Processor activeProcess.
			n := JRecordItem new selector: 'Context Switch' node: nid.
			self current addChild: n.
			stack addLast: n]