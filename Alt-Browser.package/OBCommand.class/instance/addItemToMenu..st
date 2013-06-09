user interface
addItemToMenu: aMenu
	self isActive ifTrue: [
		aMenu
			add: self label
			target: self 
			selector: #execute
			enabled: self isEnabled
			icon: self icon
			keystroke: self keystroke ]