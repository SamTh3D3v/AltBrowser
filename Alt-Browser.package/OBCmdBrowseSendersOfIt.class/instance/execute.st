execution
execute
	self halt"| node |
	node := OBSelectorNode on: target selector.
	(requestor announce: (OBShowSenders of: node)) execute"