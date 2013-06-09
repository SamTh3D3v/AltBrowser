commands
buildMenu: aMenu on: aTarget
	| t |
	t := false.
	(Pragma allNamed: #command from: self class to: self class)
		do: [ :e | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: e selector) do: [ :c | (c on: aTarget for: self) addItemToMenu: aMenu ] ]