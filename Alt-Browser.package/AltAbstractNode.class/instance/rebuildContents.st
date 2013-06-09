accessing
rebuildContents
	"Force a rebuild of the contents, to either : change the layout of the children items, or just because the contents has become out of sync with the children items."

	"Optimize that to reuse existing objects as much as possible."

	contents notNil
		ifTrue: [ 
			contents := (self childrenItems
				collect: [ :i | 
					| n |
					n := contents detect: [ :e | e item == i ] ifNone: [ nil ].
					n isNil
						ifTrue: [ self childNodeFromItem: i ]
						ifFalse: [ n ] ]) asOrderedCollection ]