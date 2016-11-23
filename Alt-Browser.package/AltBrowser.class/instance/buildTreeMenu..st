menus
buildTreeMenu: aMenu
	"Ask the selection for builidng a menu, otherwise create a default one."

	self selectedItem notNil
		ifTrue:
			[ self selectedItem buildTreeMenu: aMenu on: self treeMorph with: self ]
		ifFalse: [ | t |
			t := false.
			(Pragma allNamed: #treeAreaCommand from: self class to: self class)
				do: [ :e | 
					t
						ifTrue: [ aMenu addLine ]
						ifFalse: [ t := true ].
					(self perform: e methodSelector)
						do: [ :c | (c asClass on: self treeMorph for: self) addItemToMenu: aMenu ] ] ].
	^ aMenu