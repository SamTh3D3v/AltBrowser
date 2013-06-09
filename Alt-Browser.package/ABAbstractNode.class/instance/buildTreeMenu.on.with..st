querying
buildTreeMenu: aMenu on: aTarget with: aRequestor
	| t |
	t := false.
	(self pragmas: #treeAreaCommand from: self class to: ABAbstractNode)
		do: [ :e | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: e selector) do: [ :c | (c on: aTarget for: aRequestor) addItemToMenu: aMenu ] ]