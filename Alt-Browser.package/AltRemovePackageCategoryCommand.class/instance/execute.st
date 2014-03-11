execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedNode item.
	item parent notNil
		ifTrue: [ 
			item parent removeRPackage: item code.
			AltBrowser aNodeToRebuilt: item parent ]
		ifFalse: [ 
			AltBrowser rootItems remove: item.
			AltBrowser aRootNodesChange ].
	AltBrowser updateCategories