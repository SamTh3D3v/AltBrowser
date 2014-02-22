user interface
addModelItemsToWindowMenu: aMenu
	aMenu addLine.
	aMenu add: 'Reset' translated target: self class action: #reset.
	aMenu add: 'Initialize' translated target: self class action: #initialize