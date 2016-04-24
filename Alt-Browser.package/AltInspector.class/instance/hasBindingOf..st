bindings
hasBindingOf: aString
	"Answer true if the current selected object has that as slot."

	^ self selectedObject class allSlots
		anySatisfy: [ :e | e name == aString ]