accessing
openPathForAbstractItem: anItem
	"Open the path for this item, but do not select it at the end."

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
			anItemModel expand ]