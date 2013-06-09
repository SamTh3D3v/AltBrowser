shortcuts
updateTextKeymap: aKMDispatcher
	"Update the text keymap. Reset the dispatcher to avoid the default shortcuts."

	aKMDispatcher reset.
	aKMDispatcher attachCategory: #MorphFocusCtrlNavigation.
	self selectedNode notNil
		ifTrue: [ self selectedNode item buildTextShortcutsOn: aKMDispatcher with: self ]