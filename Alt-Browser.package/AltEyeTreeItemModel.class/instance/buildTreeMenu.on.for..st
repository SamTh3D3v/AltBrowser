commands
buildTreeMenu: aMenu on: aTreeMorph for: aRequestor
	"The item-based tree menu."

	((self
		pragmas: #treeAreaCommand
		from: item class
		to: AbstractEyeElement) sorted: [ :a :b | a selector < b selector ])
		do: [ :e | 
			(item perform: e selector)
				do:
					[ :c | (c asClass on: aTreeMorph for: aRequestor) addItemToMenu: aMenu ] ]
		separatedBy: [ aMenu addLine ].
	^ aMenu