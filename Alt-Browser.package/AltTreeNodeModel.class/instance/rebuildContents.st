accessing
rebuildContents
	"Force a rebuild of the contents. Cache to avoid recreating too many objects, and also because the layer above (MorphTreeMorph) may record instances of us to track state."

	contents notNil
		ifTrue: [ 
			contents := (self childrenItems
				collect: [ :i | 
					| n |
					n := contents detect: [ :e | e item == i ] ifNone: [ nil ].
					n isNil
						ifTrue: [ self childNodeFromItem: i ]
						ifFalse: [ n ] ]) asOrderedCollection ]