accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the AltTreeItemNodes."

	self openPathForAbstractItem: anItem.
	^ (self root findItem: anItem)
		ifNotNil: [ :m | 
			m select.
			true ]
		ifNil: [ false ]