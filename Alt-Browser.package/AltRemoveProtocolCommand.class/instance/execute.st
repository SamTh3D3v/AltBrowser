as yet unclassified
execute
	| tClass tItem |
	
	tClass := requestor selectedNode sourceClass.
	tItem := requestor selectedNode.
	tClass removeProtocol: tItem item item