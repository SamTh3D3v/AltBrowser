accessing
item: anObject
	item := anObject.
	self addMorph: item asMorph.
	item icon ifNotNil: [ :icon | self addMorph: icon asMorph ].
	item hasContents
		ifTrue:
			[ self
				addMorph:
					((item isExpanded
						ifTrue: [ self theme treeExpandedForm asMorph ]
						ifFalse: [ self theme treeUnexpandedForm asMorph ])
						on: #mouseDown send: #toggleExpanded to: item;
						yourself) ].
	self computeBounds.
	self left: self indentStep * item depth