user interface
toggleFinder
	"Should use a sligthly better approach to make space for the toolbar, really."

	"Ugly: not all elements of the finder toolbar have the same height. Sad, really."

	finder isNil
		ifTrue: [ 
			finder := Finder new.
			finder when: #updateResultDictionary send: #browseFinderResults to: self.
			finderUI := FinderUI on: finder.
			toolbar := finderUI buildSearchModeToolBar: window.
			finderUI searchingTextArea contentMorph takeKeyboardFocus.
			window paneMorphs do: [ :each | each layoutFrame topOffset: toolbar height ].
			window addMorph: toolbar fullFrame: ((0 @ 0 corner: 1 @ 0) asLayoutFrame bottomOffset: toolbar height) ]
		ifFalse: [ 
			window paneMorphs do: [ :each | each layoutFrame topOffset: 0 ].
			finder removeActionsWithReceiver: self.
			toolbar delete.
			toolbar := nil.
			finderUI := nil.
			finder := nil ]