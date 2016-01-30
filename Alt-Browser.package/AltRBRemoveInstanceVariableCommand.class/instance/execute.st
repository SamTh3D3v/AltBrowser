execution
execute
	self
		execute:
			(RBRemoveInstanceVariableRefactoring
				remove: self node name
				from: requestor selectedNode sourceClass)