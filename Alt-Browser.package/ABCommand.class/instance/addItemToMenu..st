user interface
addItemToMenu: aMenu
	self isActive
		ifTrue: [ 
			(aMenu add: self label target: self selector: #execute)
				enablementSelector: #isEnabled;
				icon:
						(self icon notNil
								ifTrue: [ UITheme current perform: self icon ]
								ifFalse: [ nil ]);
				keyText: self keyString ]