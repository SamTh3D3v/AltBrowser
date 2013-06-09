execution
execute
	| ast |
	ast := RBParser parseMethod: (requestor selectedNode sourceClass sourceCodeAt: requestor selectedNode item item) onError: [ :msg :pos | ^ self ].
	ast annotateInClass: requestor selectedNode sourceClass.
	ast explore