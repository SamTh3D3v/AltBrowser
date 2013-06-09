execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedItem item.
	item parentNode notNil
		ifTrue: [ item parentNode removeChildItem: item ]
		ifFalse: [ AltBrowser rootItems contents remove: item ].
	AltBrowser announcer announce: (AltNodeRemoved node: item)