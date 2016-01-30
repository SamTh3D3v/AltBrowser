execution
execute
	self
		execute:
			(RBPullUpInstanceVariableRefactoring
				model: (RBNamespace onEnvironment: requestor rbEnvironment)
				variable: self node name
				class: requestor selectedNode sourceClass superclass)