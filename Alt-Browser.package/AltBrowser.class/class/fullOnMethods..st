instance creation
fullOnMethods: aListOfCM
	"Given a list of compiled methods, open, and preselect all of them."

	| s l n |
	n := self open.
	(l := aListOfCM collect: [ :each | each compiledMethod ])
		do: [ :aCompiledMethod | 
			self rootItems detect: [ :each | (s := each findMethod: aCompiledMethod selector in: aCompiledMethod methodClass) notNil ].
			aCompiledMethod == l last
				ifTrue: [ n selectPathForAbstractItem: s ]
				ifFalse: [ 
					| k |
					n treeModel getRoots
						detect: [ :r | 
							| it |
							(k := r forceFindItem: s) notNil ].
					self assert: k notNil.
					self assert: k class == ABTreeNodeModel.
					n history add: k ] ]