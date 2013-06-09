commands
buildMenu: aMenu on: aTarget
	treeModel selectedItem notNil
		ifTrue: [ treeModel selectedItem buildTextMenu: aMenu on: aTarget with: self ].
	^ aMenu