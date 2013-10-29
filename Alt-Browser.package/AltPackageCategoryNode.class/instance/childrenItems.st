private
childrenItems
	^ item value
		sorted: [ :a :b | 
			a isSymbol
				ifTrue: [ 
					a
						<
							(b isSymbol
								ifTrue: [ b ]
								ifFalse: [ b name ]) ]
				ifFalse: [ a name < b name ] ]