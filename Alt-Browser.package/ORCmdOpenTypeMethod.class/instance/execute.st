execution
execute
	| typer tree messages stream types |
	typer := RBRefactoryTyper new.
	tree := RBParser parseMethod: target source.
	messages := tree allChildren
		inject: OrderedCollection new
		into: [ :result :node |
			(node isMessage and: [ node receiver isVariable ])
				ifTrue: [ result addLast: node ].
			result ].
	stream := String new writeStream.
	tree allDefinedVariables do: [ :name |
		types := typer findTypeFor: ((messages 
			select: [ :each | each receiver name = name ])
			collect: [ :each | each selector ]).
		stream nextPutAll: name; nextPutAll: ': <'.
		types
			do: [ :type | stream nextPutAll: type name ]
			separatedBy: [ stream nextPutAll: ' | ' ].
		stream nextPut: $>; cr ].
"	self definition: (OBTextDefinition text: stream contents)"