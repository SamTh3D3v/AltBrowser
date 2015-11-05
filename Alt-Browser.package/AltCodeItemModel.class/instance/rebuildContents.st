accessing
rebuildContents
	"This rebuilding, by avoiding recreation of the items, retain expand/collapse."

	contents notNil
		ifTrue: [ 
			contents := (self childrenItems
				collect: [ :i | 
					| n |
					n := contents detect: [ :e | e item == i ] ifNone: [ nil ].
					n isNil
						ifTrue: [ self childNodeFromItem: i ]
						ifFalse: [ n ] ]) asOrderedCollection ]