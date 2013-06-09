accessing
label
	"Depends on the state of the undoing facility of RB and what it contains."

	RBRefactoryChangeManager instance hasUndoableOperations
		ifTrue: [ ^ 'Undo ' , RBRefactoryChangeManager instance undoChange name ]
		ifFalse: [ ^ 'Undo ...' ]