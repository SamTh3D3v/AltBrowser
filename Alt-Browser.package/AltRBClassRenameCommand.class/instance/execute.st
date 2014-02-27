execution
execute
	| sItem |
	sItem := requestor selectedNode item.
	(RBRenameClassRefactoring
		rename: sItem itemClass theNonMetaClass
		to:
			(UIManager default
				request: 'Enter the new class name:'
				initialAnswer: sItem itemClass theNonMetaClass name)) execute.
	requestor selectPathForAbstractItem: sItem