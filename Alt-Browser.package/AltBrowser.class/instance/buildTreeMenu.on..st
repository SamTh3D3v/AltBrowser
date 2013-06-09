commands
buildTreeMenu: aMenu on: aTarget
	treeModel selectedItem notNil
		ifTrue: [ treeModel selectedItem buildTreeMenu: aMenu on: aTarget with: self ].
	^ aMenu