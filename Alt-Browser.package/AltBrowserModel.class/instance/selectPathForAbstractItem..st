accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the ABTreeModelNodes."

	| found aClass nPath tmPath aNode |
	nPath := OrderedCollection new.
	aNode := anItem.
	[ aNode notNil ]
		whileTrue: [ 
			nPath add: aNode.
			aNode := aNode parentNode ].
	self changed: #(#rootNodes #openItemPath) , nPath reverse.
	treeMorph adjustSubmorphPositions; scrollSelectionIntoView "TODO: move that line into MorphTreeMorph and raise an issue."