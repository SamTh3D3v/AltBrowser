shortcuts
updateTreeKeymap
	"Update the tree keymap."

	"Don't forget to update the tree."

	treeMorph ifNil: [ ^ self ].
	(self treeMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse:
			[ textMorph setProperty: #kmdispatcher toValue: AltKMDispatcher new ].
	self treeMorph kmDispatcher
		reset;
		attachCategory: #MorphFocusNavigation;
		attachCategory: #MorphFocusCtrlNavigation.
	self buildTreeShortcutsOn: self treeMorph kmDispatcher with: self