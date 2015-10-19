updating
aNodeRemoved: anEvent
	"If a node is removed, then what we need is to rebuild its parent."

	| found |
	(self root
		anySatisfy:
			[ :each | 
			each item = anEvent node parent
				ifTrue: [ found := each.
					true ]
				ifFalse: [ false ] ])
		ifTrue: [ found rebuildContents.
			root changed ]