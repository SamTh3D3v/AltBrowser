commands
buildTreeMenu: aMenu on: aTreeMorph for: aRequestor
	"The item-based tree menu."

	((self
		pragmas: #treeAreaCommand
		from: item class
		to: AbstractEyeElement)
		sorted: [ :a :b | a methodSelector < b methodSelector ])
		do: [ :e | 
			(item perform: e methodSelector)
				do:
					[ :c | (c asClass on: aTreeMorph for: aRequestor) addItemToMenu: aMenu ] ]
		separatedBy: [ aMenu addLine ].
	^ aMenu