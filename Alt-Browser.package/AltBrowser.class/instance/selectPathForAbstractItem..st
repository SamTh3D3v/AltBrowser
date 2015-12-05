accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the AltTreeItemNodes."

	| nPath aNode anItemModel |
	nPath := OrderedCollection new.
	aNode := anItem.
	[ aNode notNil ]
		whileTrue: [ nPath addFirst: aNode.
			aNode := aNode parent ].
	anItemModel := self root.
	nPath removeFirst.
	[ nPath notEmpty ]
		whileTrue:
			[ | next |
			next := nPath removeFirst.
			anItemModel := anItemModel contents
				detect: [ :i | i item == next ]
				ifNone: [ anItemModel ].	"Do not iterate if not found: filtering."
			anItemModel expand ].
	^ (self root findItem: anItem)
		ifNotNil: [ :m | 
			m select.
			true ]
		ifNil: [ false ]