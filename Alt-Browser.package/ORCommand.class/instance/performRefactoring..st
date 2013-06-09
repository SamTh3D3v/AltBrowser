private
performRefactoring: aRefactoring
	"Try to properly label aRefactoring and perform it or open the changes browser, depending on the preferences of the user."

	self refactoringOptions: aRefactoring.
	self label isNil ifFalse: [
		aRefactoring model name: (String streamContents: [ :stream |
			self cluster isNil
				ifFalse: [ stream nextPutAll: self cluster; nextPutAll: ', ' ].
			stream nextPutAll: self label ]) ].
	self waitWhile: [
		self class promptOnRefactoring
			ifFalse: [ aRefactoring execute ]
			ifTrue: [
				| browser |
				aRefactoring primitiveExecute.
"				browser := ORChangesBrowser 
					change: aRefactoring changes.
				browser closeBlock: [ self refreshRefactoring: aRefactoring ].
				browser open" ].
		self refreshRefactoring: aRefactoring ]