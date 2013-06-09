as yet unclassified
initializePresenter
	treeModel roots: (ABPackageList rootItems collect: [ :e | ABPackageCategoryNode with: e model: self ]).
	treeModel childrenBlock: [ :it | it contents ].
	treeModel displayBlock: [ :it | it asString ].
	treeModel
		whenSelectedItemChanged: [ :sel | 
			sel isNil
				ifTrue: [ 
					textModel text: ''.
					textModel behavior: nil ]
				ifFalse: [ 
					textModel text: sel sourceCode.
					textModel behavior: sel sourceClass ] ]