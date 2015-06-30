updating
aMethodAdded: anEvent
	"Pass through to childrens."

	self contents do: [ :each | each aMethodAdded: anEvent ]