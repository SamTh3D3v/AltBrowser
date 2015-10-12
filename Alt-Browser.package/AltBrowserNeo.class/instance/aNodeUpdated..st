updating
aNodeUpdated: anEvent
	"Don't forget to update the title and the contents if appropriate."

	| sItem |
	self selectedItem
		ifNotNil:
			[ :sNode | 
			sItem := sNode item.
			anEvent node == sItem
				ifTrue: [ self updateTitle.
					source contents: sNode sourceCode ] ].
	self root changed