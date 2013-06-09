commands
buildMenu: aMenu on: aTarget
	(Pragma allNamed: #command from: self class to: self class)
		do: [ :e | 
			(self perform: e selector) do: [ :c | (c on: aTarget for: self) addItemToMenu: aMenu ].
			aMenu addLine ]