shortcuts
updateTreeKeymap: aKMDispatcher
	"Update the tree keymap."

	aKMDispatcher resetPerInstanceTarget.
	self selectedNode notNil
		ifTrue: [ self selectedNode item buildTreeShortcutsOn: aKMDispatcher with: self ]
		ifFalse: [ 
			(Pragma allNamed: #treeAreaCommand from: self class to: self class)
				do: [ :e | (self perform: e selector) do: [ :c | (c on: treeMorph for: self) buildShortcut: aKMDispatcher ] ] ]