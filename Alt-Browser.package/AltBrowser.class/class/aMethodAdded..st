updating
aMethodAdded: anEvent
	"Ok, a method was added."

	| altEvent |
	altEvent := AltMethodAdded
		method: anEvent method
		selector: anEvent selector
		protocol: anEvent protocol
		class: anEvent class.
	altEvent rpackage: (RPackageOrganizer default packageForProtocol: anEvent protocol inClass: anEvent class).
	self rootItems do: [ :root | root aMethodAdded: altEvent ]