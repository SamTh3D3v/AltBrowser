menus
buildTreeMenu: aMenu on: aTarget
	"Ask the selection for builidng a menu, otherwise create a default one."

	self selectedNode notNil
		ifTrue: [ self selectedNode selectedItem buildTreeMenu: aMenu on: aTarget with: self ]
		ifFalse: [ 
			| t |
			t := false.
			(Pragma allNamed: #treeAreaCommand from: self class to: self class)
				do: [ :e | 
					t
						ifTrue: [ aMenu addLine ]
						ifFalse: [ t := true ].
					(self perform: e selector) do: [ :c | (c on: aTarget for: self) addItemToMenu: aMenu ] ] ].
	^ aMenu