menus
addModelItemsToWindowMenu: aMenu
	aMenu addLine.
	aMenu add: 'Reset' target: self class action: #reset.
	aMenu add: 'Initialize' target: self class action: #initialize