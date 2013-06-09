shortcuts
updateTreeKeymap
	"Update the tree keymap."

	(treeMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ textMorph setProperty: #kmdispatcher toValue: AltKMDispatcher new ].
	treeMorph kmDispatcher
		reset;
		attachCategory: #MorphFocusNavigation;
		attachCategory: #MorphFocusCtrlNavigation.
	self selectedNode notNil
		ifTrue: [ self selectedNode item buildTreeShortcutsOn: treeMorph kmDispatcher with: self ]
		ifFalse: [ 
			(Pragma allNamed: #treeAreaCommand from: self class to: self class)
				do: [ :e | (self perform: e selector) do: [ :c | (c on: treeMorph for: self) buildShortcut: treeMorph kmDispatcher ] ] ]