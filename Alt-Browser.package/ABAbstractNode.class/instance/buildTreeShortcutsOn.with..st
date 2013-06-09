querying
buildTreeShortcutsOn: aKMDispatcher with: aRequestor
	"This is an attempt at handling shortcuts... Which works, with the help of a custom KMDispatcher."

	(Pragma allNamed: #treeAreaCommand from: self class to: ABAbstractNode)
		do: [ :e | (self perform: e selector) do: [ :c | (c on: aRequestor treeModel for: aRequestor) buildShortcut: aKMDispatcher ] ]