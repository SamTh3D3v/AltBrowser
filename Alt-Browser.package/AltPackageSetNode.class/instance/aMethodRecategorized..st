updating
aMethodRecategorized: anEvent
	"Pass through to childrens."

	self contents do: [ :each | each aMethodRecategorized: anEvent ]