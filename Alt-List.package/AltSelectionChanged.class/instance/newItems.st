accessing
newItems
	^ newItems ifNil: [ newItems := OrderedCollection new ]