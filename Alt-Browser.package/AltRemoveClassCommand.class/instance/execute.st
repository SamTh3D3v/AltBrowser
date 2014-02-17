execution
execute
		| classToRemove |
	requestor okToChange
		ifFalse: [ ^ nil ].
	classToRemove := requestor selectedNode item item.
	(RBRemoveClassRefactoring classNames: {(classToRemove name)}) execute.
	^ nil