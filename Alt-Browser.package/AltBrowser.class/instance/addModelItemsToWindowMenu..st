menu
addModelItemsToWindowMenu: aMenu
	aMenu addLine.
	aMenu add: 'Set debug' target: self class action: #setDebug.
	aMenu add: 'Remove debug' target: self class action: #removeDebug.
	aMenu add: 'Reset' target: self class action: #reset.
	aMenu add: 'Initialize' target: self class action: #initialize