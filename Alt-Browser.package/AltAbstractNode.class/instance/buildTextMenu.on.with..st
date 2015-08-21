querying
buildTextMenu: aMenu on: aTarget with: aRequestor
	"Based on protocol names and not pragmas anymore."

	| t |
	t := false.
	((self selectorsIn: '.*text commands' from: self class upTo: AltAbstractNode) sorted: [ :a :b | a < b ])
		do: [ :p | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: p) do: [ :c | (c asClass on: aTarget for: aRequestor) addItemToMenu: aMenu ] ]