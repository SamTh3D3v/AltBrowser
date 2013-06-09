execution
execute
	| sItem |
	sItem := requestor selectedNode item.
	(RBRenameClassRefactoring
		rename: sItem item theNonMetaClass
		to:
			(UIManager default
				request: 'Enter the new class name:'
				initialAnswer: sItem item theNonMetaClass name)) execute.
	requestor selectPathForAbstractItem: sItem