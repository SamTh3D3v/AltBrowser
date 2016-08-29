actions
buildTreeMenu: aMenu on: aTarget with: aRequestor
	| t |
	t := false.
	((self pragmas: #treeAreaCommand from: self class to: AltAbstractNode)
		sorted: [ :a :b | a methodSelector < b methodSelector ])
		do: [ :e | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: e methodSelector)
				do: [ :c | (c asClass on: aTarget for: aRequestor) addItemToMenu: aMenu ] ].
	^ aMenu