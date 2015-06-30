refactoring
performRefactoring: aRefactoring
	[ 
	[ 
	[ self internalPerformRefactoring: aRefactoring ]
		on: RBRefactoringFailure
		do: [ :exception | self handleFailure: exception ] ]
		on: RBRefactoringWarning
		do: [ :exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ :exception | self handleError: exception ]