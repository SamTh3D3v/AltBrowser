execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedItem item.
	item parentNode notNil
		ifTrue: [ item parentNode removeChildItem: item ]
		ifFalse: [ AltBrowser rootItems remove: item ].
	AltBrowser allInstances do: [ :i | i removeNode: item ]