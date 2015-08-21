menus
buildTreeMenu: aMenu
	"Ask the selection for builidng a menu, otherwise create a default one."

	self selectedNode notNil
		ifTrue: [ self selectedNode item buildTreeMenu: aMenu on: self treeMorph with: self ]
		ifFalse: [ 
			| t |
			t := false.
			self class protocols
				do: [ :p | 
					(p matchesRegex: '.*tree commands')
						ifTrue: [ 
							(self class selectorsInProtocol: p)
								do: [ :e | 
									t
										ifTrue: [ aMenu addLine ]
										ifFalse: [ t := true ].
									(self perform: e selector) do: [ :c | (c asClass on: self treeMorph for: self) addItemToMenu: aMenu ] ] ] ] ].
	^ aMenu