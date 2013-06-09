accessing
addItemToMenu: aMenu 
	| submenu |
	submenu := aMenu 
		addSubmenu: label
		enabled: self isEnabled.
	self populateMenu: submenu