accessing
selectedItem
	"Return the currently selected item."

	^ selection ifNotNil: [ selection item ]