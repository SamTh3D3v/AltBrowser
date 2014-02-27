execution
execute
	| newName |
	newName := UIManager default request: 'Rename variable ' , self node name , ' to:' initialAnswer: self node name.
	newName ifNil: [ ^ nil ].
	(RBRenameTemporaryRefactoring
		renameTemporaryFrom: (self node start to: self node stop)
		to: newName
		in: requestor selectedNode sourceClass
		selector: requestor selectedNode item selector) execute