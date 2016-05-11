execution
execute
	| ast |
	ast := RBParser
		parseMethod: (requestor selectedNode sourceClass sourceCodeAt: requestor selectedNode item selector)
		onError: [ :msg :pos | ^ self ].
	ast doSemanticAnalysisIn: requestor selectedNode sourceClass.
	ast inspect