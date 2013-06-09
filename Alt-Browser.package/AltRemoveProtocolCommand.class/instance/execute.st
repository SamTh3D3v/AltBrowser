as yet unclassified
execute
	| tClass tItem |
	
	tClass := requestor selectedNode sourceClass.
	tItem := requestor selectedNode.
	tClass removeCategory: tItem item item