shortcuts
updateTreeKeymap: aKMDispatcher
	"Update the tree keymap. Change the key dispatcher if needed. Target for now is the PluggableTreeMorph, we will have to see if this is the correct one."

	self selectedItem notNil
		ifTrue: [ self selectedItem item buildTreeShortcutsOn: aKMDispatcher with: self ]
		ifFalse: [ 
			(Pragma allNamed: #treeAreaCommand from: self class to: AltBrowser)
				do: [ :e | (self perform: e selector) do: [ :c | (c on: self treeModel for: self) buildShortcut: aKMDispatcher ] ] ]