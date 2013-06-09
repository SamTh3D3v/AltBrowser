accessing
rebuildContents
	"Force a rebuild of the contents."
	
	contents notNil
		ifTrue: [ 
			contents := (self childrenItems
				collect: [ :i | 
					| n |
					n := contents detect: [ :e | e item == i ] ifNone: [ nil ].
					n isNil
						ifTrue: [ self childNodeFromItem: i ]
						ifFalse: [ n ] ]) asOrderedCollection ]