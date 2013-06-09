as yet unclassified
childNodeClassFromItem: anItem
	anItem == self item classSide
		ifTrue: [ ^ self class ].
	^ ABMethodCategoryNode