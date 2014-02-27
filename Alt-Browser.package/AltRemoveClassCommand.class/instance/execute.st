execution
execute
		| classToRemove |
	requestor okToChange
		ifFalse: [ ^ nil ].
	classToRemove := requestor selectedNode item itemClass.
	(RBRemoveClassRefactoring classNames: {(classToRemove name)}) execute.
	^ nil