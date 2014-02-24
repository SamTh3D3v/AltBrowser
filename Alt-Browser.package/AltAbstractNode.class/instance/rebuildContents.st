accessing
rebuildContents
	"Force a rebuild of the contents, to either : change the layout of the children items, or just because the contents has become out of sync with the children items. Note that optimising contents as a cache is useless in terms of performance, because in most cases we rebuilt all the morphs that are representing them. However, morphs state conservation (expanded / not expanded) tracks by object identity, so caching is a good solution."

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