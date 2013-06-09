shortcuts
updateTreeKeymap
	"Update the tree keymap. Change the key dispatcher if needed. Target for now is the PluggableTreeMorph, we will have to see if this is the correct one."

	| treeMorph |
	treeMorph := treeModel widget.
	(treeMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ treeMorph setProperty: #kmDispatcher toValue: (AltKMDispatcher target: treeMorph) ]
		ifTrue: [ treeMorph kmDispatcher reset ].
	self selectedItem notNil
		ifTrue: [ self selectedItem item buildTreeShortcutsOn: treeMorph with: self ]