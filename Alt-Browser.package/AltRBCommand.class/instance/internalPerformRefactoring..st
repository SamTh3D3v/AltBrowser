refactoring
internalPerformRefactoring: aRefactoring
	"Try to properly label aRefactoring and perform it or open the changes browser, depending on the preferences of the user. Extracted from Nautilus..."

	self refactoringOptions: aRefactoring.
	self promptOnRefactoring
		ifFalse: [ aRefactoring execute ]
		ifTrue: [ 
			aRefactoring primitiveExecute.
			(ChangesBrowser changes: aRefactoring) open ]