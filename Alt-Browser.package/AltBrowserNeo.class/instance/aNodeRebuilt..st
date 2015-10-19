updating
aNodeRebuilt: anEvent
	"Similar to others. Search for the node, force a rebuild of the node. Note that if the parent node is nil, this is a root change."

	| found |
	(self root
		anySatisfy:
			[ :each | 
			each item = anEvent node
				ifTrue: [ found := each.
					true ]
				ifFalse: [ false ] ])
		ifTrue: [ found rebuildContents.
			root changed ]