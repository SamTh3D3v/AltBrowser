as yet unclassified
item: anObject in: anAltListViewportMorph
	"Create the morph representing the item. Use information from the surrounding morph."

	item := anObject.
	self extent: anAltListViewportMorph extent.
	self addMorph: item asMorph.
	item icon ifNotNil: [ :icon | self addMorph: icon asMorph ].
	item hasContents
		ifTrue: [ | toggle enclosing |
			enclosing := Morph new.
			enclosing color: Color transparent.
			toggle := item isExpanded
				ifTrue: [ self theme treeExpandedForm asMorph ]
				ifFalse: [ self theme treeUnexpandedForm asMorph ].
			enclosing width: toggle width.
			enclosing height: self submorphs first height.
			enclosing addMorph: toggle.
			toggle center: enclosing center.
			enclosing on: #mouseDown send: #toggleExpanded to: item.
			self addMorph: enclosing ]
		ifFalse: [ self addMorph: (Form extent: 10 @ 9 depth: Display depth) asMorph ].
	self computeBounds.
	self bottom: self bottom + 2.
	self submorphs do: [ :e | e top: 1 ].
	self left: self indentStep * item depth