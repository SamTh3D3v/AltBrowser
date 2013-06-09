initialization
initializePresenter
	"The models are created, it means I can register on events."
	
	treeModel roots: self getRootItems.
	treeModel childrenBlock: [ :it | it contents ].
	treeModel displayBlock: [ :it | it asString ].
	treeModel
		whenSelectedItemChanged: [ :sel | 
			sel isNil
				ifTrue: [ 
					textModel text: ''.
					textModel behavior: nil.
					textModel aboutToStyle: false ]
				ifFalse: [ 
					textModel text: sel sourceCode.
					textModel behavior: sel sourceClass.
					textModel aboutToStyle: sel isStyled ] ].
	textModel menu: [ :m :t | self buildMenu: m on: t ].
	treeModel menu: [:m :t | self buildTreeMenu: m on: t].
	self registerOnSystemAnnouncements