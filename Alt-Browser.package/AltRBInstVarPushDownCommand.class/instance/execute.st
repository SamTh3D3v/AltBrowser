execution
execute
	self
		performRefactoring:
			(RBPushDownInstanceVariableRefactoring
				model: (RBNamespace onEnvironment: requestor rbEnvironment)
				variable: self node name
				class: requestor selectedNode sourceClass)