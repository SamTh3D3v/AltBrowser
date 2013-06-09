accessing
selectedItem: anItem
	"May not be working at all."

	| tMorph |
	treeModel widget notNil
		ifTrue: [ tMorph := (treeModel widget scroller submorphs at: 1) findItem: anItem ].
	tMorph notNil
		ifTrue: [ treeModel widget setSelectedMorph: tMorph ]
		ifFalse: [ anItem explore ]