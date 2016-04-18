shortcuts
buildTreeMenu: aMenu
	"The default tree menu."

	self treeAreaCommands
		do: [ :c | (c asClass on: self treeMorph for: self) addItemToMenu: aMenu ].
	^ aMenu