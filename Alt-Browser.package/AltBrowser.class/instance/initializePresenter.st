initialization
initializePresenter
	"The models are created, it means I can register on events."
	
	treeModel roots: self getRootItems.
	treeModel childrenBlock: [ :it | it contents ].
	treeModel displayBlock: [ :it | it item asText ].
	treeModel
		whenSelectedItemChanged: [ :sel |
			treeModel updateKeymap.
			textModel updateKeymap.
			sel isNil
				ifTrue: [ 
					textModel text: ''.
					textModel behavior: nil.
					textModel aboutToStyle: false ]
				ifFalse: [ 
					textModel text: sel sourceCode.
					textModel behavior: sel sourceClass.
					textModel aboutToStyle: sel isStyled.
					self history add: sel ] ].
	textModel menu: [ :m :t | self buildMenu: m on: t ].
	treeModel menu: [:m :t | self buildTreeMenu: m on: t].
	
	treeModel keymapHolder: [:kmDispatcher | self updateTreeKeymap: kmDispatcher].
	textModel keymapHolder: [:kmDispatcher | self updateTextKeymap: kmDispatcher].
	treeModel updateKeymap.
	textModel updateKeymap.
	
	self class announcer weak on: AltRootsReset send: #reset to: self.
	self class announcer weak on: AltNodeRebuilt send: #rebuiltNode: to: self.
	self class announcer weak on: AltNodeRemoved send: #removeNode: to: self.
	self class announcer weak on: AltNodeAdded send: #addNode: to: self.
	
	SystemAnnouncer uniqueInstance weak on: MethodModified send: #aMethodUpdated: to: self.