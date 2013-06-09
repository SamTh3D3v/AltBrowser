updating
aNodeToRebuilt: r
	"Ok. The clever updating is done and it works rather nicely. Will help simplify the extensions to IndentingListItemMorph."

	r isNil ifTrue: [ ^ self ].
	r rebuildContents.
	announcer announce: (AltNodeRebuilt node: r)