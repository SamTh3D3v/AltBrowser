execution
execute
	self
		performRefactoring:
			(RBPullUpInstanceVariableRefactoring
				model: (RBNamespace onEnvironment: requestor rbEnvironment)
				variable: self node name
				class: requestor selectedNode sourceClass superclass)