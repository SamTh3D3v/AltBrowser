execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedNode item.
	item parentNode notNil
		ifTrue: [ item parentNode removeChildItem: item ]
		ifFalse: [ AltBrowserModel rootItems remove: item ].
	AltBrowserModel announcer announce: (AltNodeRemoved node: item)