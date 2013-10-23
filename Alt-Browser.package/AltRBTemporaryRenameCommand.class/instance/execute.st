execution
execute
	| newName |
	newName := UIManager default request: 'Rename variable ' , self node name , ' to:' initialAnswer: self node name.
	newName ifNil: [ ^ nil ].
	(RBRenameTemporaryRefactoring
		renameTemporaryFrom: (self node start - 1 to: self node stop - 1)
		to: newName
		in: requestor selectedNode sourceClass
		selector: requestor selectedNode item item) execute