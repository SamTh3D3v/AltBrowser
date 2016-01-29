execution
execute: aRefactoringCommand
	[ self applyOptionsOn: aRefactoringCommand.
	aRefactoringCommand execute ]
		on: RBRefactoringError
		do:
			[ :e | 
			(self confirm: e messageText orCancel: [ false ])
				ifTrue: [ e actionBlock ifNotNil: [ :a | a value ] ] ]