querying
buildTextMenu: aMenu on: aTarget with: aRequestor
	"Now I have a safe way of finding pragmas."

	| t |
	t := false.
	(self pragmas: #textAreaCommand from: self class to: ABAbstractNode)
		do: [ :p | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: p selector) do: [ :c | (c on: aTarget for: aRequestor) addItemToMenu: aMenu ] ]