execution
execute
	"Rename an instance variable"

	self
		performRefactoring:
			(RBCreateAccessorsForVariableRefactoring
				variable: self node name
				class: requestor selectedNode sourceClass
				classVariable: requestor selectedNode sourceClass isMeta)