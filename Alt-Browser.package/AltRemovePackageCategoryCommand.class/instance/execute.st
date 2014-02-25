execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedNode item.
	item parentNode notNil
		ifTrue: [ 
			item parentNode removeRPackage: item item.
			AltBrowser aNodeToRebuilt: item parentNode ]
		ifFalse: [ 
			AltBrowser rootItems remove: item.
			AltBrowser aRootNodesChange ]