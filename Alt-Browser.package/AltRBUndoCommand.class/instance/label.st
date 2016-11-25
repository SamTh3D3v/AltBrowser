accessing
label
	"Depends on the state of the undoing facility of RB and what it contains."

	(RBRefactoryChangeManager instance hasUndoableOperations and: [ RBRefactoryChangeManager instance undoChange changes notEmpty ])
		ifTrue: [ ^ 'Undo ' , RBRefactoryChangeManager instance undoChange changes first printString contractTo: 20 ]
		ifFalse: [ ^ 'Undo ...' ]