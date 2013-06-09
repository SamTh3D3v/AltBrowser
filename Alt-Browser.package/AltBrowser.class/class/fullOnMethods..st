instance creation
fullOnMethods: aListOfCM
	"Given a list of compiled methods, open, and preselect all of them."
	
	"It's fast, in fact...."

	| s l n |
	n := self open.
	(l := aListOfCM collect: [ :each | each compiledMethod ])
		do: [ :aCompiledMethod | 
			self rootItems
				detect: [ :each | (s := each findMethod: aCompiledMethod selector in: aCompiledMethod methodClass) notNil ].
			n selectPathForAbstractItem: s	" ]
				ifFalse: [ 
					| k |
					n treeModel nodeList
						detect: [ :r | 
							| it |
							(k := r forceFindItem: s) notNil ].
					self assert: k notNil.
					self assert: k class == ABTreeNodeModel.
					n history add: k ]"	"Optimization to store in history without opening" ]