querying
buildTreeMenu: aMenu on: aTarget with: aRequestor
	"Tree commands are in the commands-tree protocol"

	| t |
	t := false.
	((self selectorsIn: 'commands-tree' from: self class to: AltAbstractNode) sorted: [ :a :b | a < b ])
		do: [ :e | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: e) do: [ :c | (c on: aTarget for: aRequestor) addItemToMenu: aMenu ] ]