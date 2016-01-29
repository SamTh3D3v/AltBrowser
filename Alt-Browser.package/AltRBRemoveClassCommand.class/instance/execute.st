execution
execute
	| classToRemove |
	requestor okToChange
		ifFalse: [ ^ nil ].
	classToRemove := requestor selectedNode item itemClass.
	self
		execute: (RBRemoveClassRefactoring classNames: {classToRemove name}).
	^ nil