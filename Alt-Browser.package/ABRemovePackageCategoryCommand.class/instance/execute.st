execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedItem item.
	item parentNode notNil
		ifTrue: [ item parentNode removeChildItem: item ]
		ifFalse: [ AltBrowser roots remove: item ].
	AltBrowser announcer announce: (AltNodeRemoved node: item)