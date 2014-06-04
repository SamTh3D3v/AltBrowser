accessing
label
	"Depends on whether there is anything to redo or not."

	RBRefactoryChangeManager instance hasRedoableOperations
		ifTrue: [ ^ 'Redo ' , RBRefactoryChangeManager instance redoChange changeString contractTo: 20 ]
		ifFalse: [ ^ 'Redo ...' ]