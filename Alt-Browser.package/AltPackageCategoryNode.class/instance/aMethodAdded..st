updating
aMethodAdded: anEvent
	"A false or true result isn't needed."

	self contents do: [ :each | each aMethodAdded: anEvent ]