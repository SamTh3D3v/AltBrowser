execution
execute
	| typer |
	typer := RBRefactoryTyper new.
	typer runOn: target theClass.
"	self definition: (OBTextDefinition text: typer printString)"