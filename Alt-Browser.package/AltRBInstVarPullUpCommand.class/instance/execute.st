execution
execute
	[ ((RBPullUpInstanceVariableRefactoring
		model: (RBNamespace onEnvironment: requestor rbEnvironment)
		variable: self node name
		class: requestor selectedNode sourceClass superclass)
		setOption: #openBrowser
		toUse: [ :rb :env | requestor class openOnEnvironment: env ])
		execute ]
		on: RBRefactoringError
		do: [ :exception | self handleError: exception ]