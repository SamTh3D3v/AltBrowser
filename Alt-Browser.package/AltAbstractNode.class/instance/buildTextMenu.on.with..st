querying
buildTextMenu: aMenu on: aTarget with: aRequestor
	"Removed pragmas. Not usefull."
	
	"Text area commands are in the commands-text protocol"

	| t |
	t := false.
	((self selectorsIn: 'commands-text' from: self class to: AltAbstractNode) sorted: [ :a :b | a < b ])
		do: [ :p | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: p) do: [ :c | (c on: aTarget for: aRequestor) addItemToMenu: aMenu ] ]