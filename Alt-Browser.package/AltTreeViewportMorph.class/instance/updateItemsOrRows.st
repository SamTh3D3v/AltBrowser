updating
updateItemsOrRows
	"Depending on our recorded changes, update things appropriately."

	"Update items has priority, update rows comes next, answer should be
	true if an update was done, false if no update was done."
	
	"Selection visibility is ensured around that."

	self owner ifNil: [ ^ false ].
	self owner model ifNil: [ ^ false ].
	self ensureVisibleSelection
		ifTrue: [ self updateVisibleSelectionVertical ].
	^ self needsRefreshItems
		ifTrue:
			[ self updateItems.
			self ensureVisibleSelection
				ifTrue:
					[ self updateVisibleSelectionHorizontal.
					ensureVisibleSelection := false ].
			needsRefreshRows := needsRefreshItems := false.
			true ]
		ifFalse:
			[ self needsRefreshRows
				ifTrue:
					[ self updateRows.
					self ensureVisibleSelection
						ifTrue:
							[ self updateVisibleSelectionHorizontal.
							ensureVisibleSelection := false ].
					needsRefreshRows := false.
					true ]
				ifFalse:
					[ self ensureVisibleSelection
						ifTrue:
							[ self updateVisibleSelectionHorizontal.
							ensureVisibleSelection := false.
							true ]
						ifFalse: [ false ] ] ]