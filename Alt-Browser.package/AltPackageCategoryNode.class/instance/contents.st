accessing
contents
	contents
		ifNil: [ 
			contents := (((code value reject: [ :a | a isSymbol ]) sorted: [ :a :b | a key < b key ])
				collect: [ :a | AltPackageCategoryNode with: a parent: self ])
				,
					(((code value select: [ :a | a isSymbol ]) sorted: [ :a :b | a < b ])
						collect: [ :a | AltPackageNode with: a parent: self ]) ].
	^ contents