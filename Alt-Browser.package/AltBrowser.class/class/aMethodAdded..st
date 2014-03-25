updating
aMethodAdded: anEvent
	"Ok, a method was added."

	| altEvent |
	altEvent := AltMethodAdded
		method: anEvent method
		selector: anEvent selector
		protocol: anEvent protocol
		class: anEvent methodClass.
	altEvent rpackage: (RPackageOrganizer default packageForProtocol: anEvent protocol inClass: anEvent methodClass).
	self root aMethodAdded: altEvent