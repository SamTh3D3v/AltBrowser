accessing
removeChildItem: anItem
	"Remove a child."

	| d |
	item value remove: anItem item.
	contents isNil ifTrue: [^nil] ifFalse: [
		^ contents remove: anItem]