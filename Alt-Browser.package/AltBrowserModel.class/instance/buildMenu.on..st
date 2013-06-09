menus
buildMenu: aMenu on: aTarget
	self selectedNode notNil
		ifTrue: [ self selectedNode buildTextMenu: aMenu on: aTarget with: self ].
	^ aMenu