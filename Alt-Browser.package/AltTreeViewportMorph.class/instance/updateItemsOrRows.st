updating
updateItemsOrRows
	"Depending on our recorded changes, update things appropriately."

	"Update items has priority, update rows comes next, answer should be
	true if an update was done, false if no update was done."

	self owner ifNil: [ ^ false ].
	self owner model ifNil: [ ^ false ].
	^ self needsRefreshItems
		ifTrue:
			[ self updateItems.
			needsRefreshRows := needsRefreshItems := false.
			true ]
		ifFalse:
			[ self needsRefreshRows
				ifTrue: [ self updateItems.
					needsRefreshRows := false.
					true ]
				ifFalse: [ false ] ]