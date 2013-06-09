private
getItemsFor: aCategoryDefinition from: aListOfPackages
	"Remove elements from aListOfPackages to bring them accordingly to a CategoryDefinition. Returns the top-level object. If this definition is an array, go recursively through it."

	"Reduce single element categories to that element."

	aCategoryDefinition isArray
		ifTrue: [ 
			| i |
			i := aCategoryDefinition first -> OrderedCollection new.
			aCategoryDefinition allButFirst do: [ :each | i value add: (self getItemsFor: each from: aListOfPackages) ].
			^ i ]
		ifFalse: [ 
			| i |
			i := aCategoryDefinition -> OrderedCollection new.
			(aListOfPackages
				select: [ :e | 
					e packageName size >= aCategoryDefinition size
						and: [ (e packageName copyFrom: 1 to: aCategoryDefinition size) = aCategoryDefinition ] ])
				do: [ :e | 
					aListOfPackages remove: e.
					i value add: e ].
			i value size == 1
				ifTrue: [ ^ i value first ].
			^ i ]