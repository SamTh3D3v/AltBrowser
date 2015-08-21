shortcuts
updateTreeKeymap
	"Update the tree keymap."

	(self treeMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ textMorph setProperty: #kmdispatcher toValue: AltKMDispatcher new ].
	self treeMorph kmDispatcher
		reset;
		attachCategory: #MorphFocusNavigation;
		attachCategory: #MorphFocusCtrlNavigation.
	self selectedNode notNil
		ifTrue: [ self selectedNode item buildTreeShortcutsOn: self treeMorph kmDispatcher with: self ]
		ifFalse: [ 
			self class protocols
				do: [ :p | 
					(p matchesRegex: '.*tree commands')
						ifTrue: [ 
							((self class selectorsInProtocol: p) sorted: [ :a :b | a < b ])
								do: [ :e | (self perform: e) do: [ :c | (c asClass on: self treeMorph for: self) buildShortcut: self treeMorph kmDispatcher ] ] ] ] ]