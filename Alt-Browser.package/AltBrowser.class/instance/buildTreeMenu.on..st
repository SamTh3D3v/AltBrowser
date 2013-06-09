commands
buildTreeMenu: aMenu on: aTarget
	"Ask the selection for builidng a menu, otherwise create a default one."
	
	treeModel selectedItem notNil
		ifTrue: [ treeModel selectedItem buildTreeMenu: aMenu on: aTarget with: self ]
		ifFalse: [ 
			| t |
			t := false.
			(Pragma allNamed: #treeAreaCommand from: self class to: AltBrowser)
				do: [ :e | 
					t
						ifTrue: [ aMenu addLine ]
						ifFalse: [ t := true ].
					(self perform: e selector) do: [ :c | (c on: aTarget for: self) addItemToMenu: aMenu ] ] ].
	^ aMenu