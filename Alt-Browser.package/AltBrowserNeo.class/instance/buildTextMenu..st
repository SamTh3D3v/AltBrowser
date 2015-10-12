menus
buildTextMenu: aMenu
	self selectedItem notNil
		ifTrue: [ self selectedItem buildTextMenu: aMenu on: textMorph with: self ].
	^ aMenu