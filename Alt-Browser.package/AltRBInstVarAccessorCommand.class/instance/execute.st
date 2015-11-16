execution
execute
	"Create accessors for an instance variable"

	(RBCreateAccessorsForVariableRefactoring
		variable: self node name
		class: requestor selectedNode sourceClass
		classVariable: requestor selectedNode sourceClass isMeta) execute