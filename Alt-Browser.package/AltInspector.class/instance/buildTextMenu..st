shortcuts
buildTextMenu: aMenu
	| t |
	t := false.
	(Pragma allNamed: #textAreaCommand from: self class to: self class)
		do: [ :e | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: e methodSelector)
				do: [ :c | (c asClass on: self textMorph for: self) addItemToMenu: aMenu ] ].
	^ aMenu