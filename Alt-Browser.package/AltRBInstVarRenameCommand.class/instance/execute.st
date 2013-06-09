execution
execute
	"Rename an instance variable"

	| name |
	name := self request: 'Rename instance var ' , self node name, ' to:' initialAnswer: self node name.
	name ifNil: [ ^ nil ].
	(RBRenameInstanceVariableRefactoring rename: self node name to: name asSymbol in: self sourceClass) execute