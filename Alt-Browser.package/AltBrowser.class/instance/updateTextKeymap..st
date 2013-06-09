shortcuts
updateTextKeymap: aKMDispatcher
	"Update the text keymap. Reset the dispatcher to avoid the default shortcuts."

	aKMDispatcher reset.
	aKMDispatcher attachCategory: #Morph.	"navigation focus shortcuts."
	self selectedItem notNil
		ifTrue: [ self selectedItem item buildTextShortcutsOn: aKMDispatcher with: self ]