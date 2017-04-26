execution
execute
	| item |
	item := requestor selectedNode item.
	Metacello new
		baseline: self getItem projectName;
		repository: self getItem repositories;
		get