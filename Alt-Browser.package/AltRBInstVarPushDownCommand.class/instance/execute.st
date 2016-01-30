execution
execute
	self
		execute:
			(RBPushDownInstanceVariableRefactoring
				model: (RBNamespace onEnvironment: requestor rbEnvironment)
				variable: self node name
				class: requestor selectedNode sourceClass)