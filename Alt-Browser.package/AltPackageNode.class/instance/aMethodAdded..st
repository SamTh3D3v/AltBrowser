updating
aMethodAdded: anEvent
	"Pass through to childrens."

	self rpackage == anEvent rpackage
		ifTrue: [ self contents do: [ :each | each aMethodAdded: anEvent ] ]