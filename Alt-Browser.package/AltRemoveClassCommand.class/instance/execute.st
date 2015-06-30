execution
execute
	| classToRemove |
	requestor okToChange
		ifFalse: [ ^ nil ].
	classToRemove := requestor selectedNode item itemClass.
	self performRefactoring: (RBRemoveClassRefactoring classNames: {(classToRemove name)}).
	^ nil