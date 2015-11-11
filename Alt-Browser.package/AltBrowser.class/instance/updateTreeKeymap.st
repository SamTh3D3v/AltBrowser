shortcuts
updateTreeKeymap
	"Update the tree keymap."

	"Don't forget to update the tree."

	treeMorph ifNil: [ ^ self ].
	(self treeMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ textMorph
				setProperty: #kmdispatcher
				toValue: AltKMDispatcher new ].
	self treeMorph kmDispatcher
		reset;
		attachCategory: #MorphFocusNavigation;
		attachCategory: #MorphFocusCtrlNavigation.
	self selectedItem notNil
		ifTrue:
			[ self selectedItem
				buildTreeShortcutsOn: self treeMorph kmDispatcher
				with: self ]
		ifFalse:
			[ (Pragma
				allNamed: #treeAreaCommand
				from: self class
				to: self class)
				do:
					[ :e | 
					(self perform: e selector)
						do:
							[ :c | 
							(c asClass on: self treeMorph for: self)
								buildShortcut: self treeMorph kmDispatcher ] ] ]