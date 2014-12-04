user interface
addModelItemsToWindowMenu: aMenu
	aMenu addLine.
	aMenu add: 'Reset' translated target: self class selector: #reset.
	aMenu add: 'Initialize' translated target: self class selector: #initialize