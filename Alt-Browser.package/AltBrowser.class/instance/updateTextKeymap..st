shortcuts
updateTextKeymap: aKMDispatcher
	"Update the text keymap. Change the key dispatcher if needed. Change all dispatchers to force and really force default shortcuts not to be used."

	aKMDispatcher reset.
	self selectedItem notNil
		ifTrue: [ self selectedItem item buildTextShortcutsOn: aKMDispatcher with: self ]