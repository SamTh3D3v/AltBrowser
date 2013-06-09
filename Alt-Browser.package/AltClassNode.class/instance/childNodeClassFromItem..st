private
childNodeClassFromItem: anItem
	anItem == self item classSide
		ifTrue: [ ^ self class ].
	anItem == self item
		ifTrue: [ ^ AltClassCommentNode ].
	^ AltMethodCategoryNode