execution
execute
	| message className classToRemove result |
	requestor okToChange
		ifFalse: [ ^ false ].
	classToRemove := requestor selectedNode item item.
	(RBRemoveClassRefactoring classNames: {(classToRemove name)}) execute.
	^ nil