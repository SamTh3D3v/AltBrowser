execution
execute
	self halt"| node |
	node := OBSelectorNode on: target selector.
	(requestor announce: (OBShowImplementors of: node)) execute"