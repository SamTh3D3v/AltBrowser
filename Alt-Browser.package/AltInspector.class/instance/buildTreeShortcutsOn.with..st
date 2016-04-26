shortcuts
buildTreeShortcutsOn: aKMDispatcher with: aRequestor
	"This is an attempt at handling shortcuts... Which works, with the help of a custom KMDispatcher."

	self selectedItem buildTreeShortcutsOn: aKMDispatcher for: aRequestor