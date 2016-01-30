execution
execute: aRefactoringCommand
	[ [ self applyOptionsOn: aRefactoringCommand.
	aRefactoringCommand execute ]
		on: RBRefactoringError , RBRefactoringFailure
		do:
			[ :e | 
			e actionBlock
				ifNil: [ self inform: e messageText ]
				ifNotNil:
					[ :aBlock | 
					(self confirm: e messageText)
						ifTrue: [ aBlock value ] ] ] ]
		on: RBRefactoringWarning
		do: [ :e | 
			self inform: e messageText.
			e resume ]