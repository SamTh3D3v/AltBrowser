querying
buildTextMenu: aMenu on: aTarget with: aRequestor
	"Now I have a safe way of finding pragmas."

	| t |
	t := false.
	((self pragmas: #textAreaCommand from: self class to: AltAbstractNode)
		sorted: [ :a :b | a methodSelector < b methodSelector ])
		do: [ :p | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(((self perform: p methodSelector)
				collect: [ :c | c asClassInEnvironment: Smalltalk globals ifAbsent: [  ] ])
				reject: [ :c | c isNil ])
				do: [ :c | (c on: aTarget for: aRequestor) addItemToMenu: aMenu ] ]