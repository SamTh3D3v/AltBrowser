private
getItemsFor: aCategoryDefinition from: aListOfPackages
	"Remove elements from aListOfPackages to bring them accordingly to a CategoryDefinition. Returns the top-level object. If this definition is an array, go recursively through it."

	"Do not reduce single element categories to that element."

	| i |
	aCategoryDefinition isArray
		ifTrue: [ 
			i := aCategoryDefinition first -> OrderedCollection new.
			i value addAll: (aCategoryDefinition allButFirst collect: [ :each | self getItemsFor: each from: aListOfPackages ]) ]
		ifFalse: [ 
			i := aCategoryDefinition -> OrderedCollection new.
			aListOfPackages
				removeAll:
					(i value
						addAll:
							(aListOfPackages
								select: [ :e | e size >= aCategoryDefinition size and: [ (e copyFrom: 1 to: aCategoryDefinition size) = aCategoryDefinition ] ])) ].
	^ i