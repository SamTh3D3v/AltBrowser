execution
execute
	"Rename an instance variable"

	| name |
	name := UIManager default request: 'Rename instance var ' , self node name , ' to:' initialAnswer: self node name.
	name ifNil: [ ^ nil ].
	(RBRenameInstanceVariableRefactoring rename: self node name to: name asSymbol in: requestor selectedNode item sourceClass) execute