updating
aMethodAdded: anEvent
	"Ok, a method was added. Trigger some reorganization if it is a specific method of a configuration."

	| altEvent |
	altEvent := AltMethodAdded method: anEvent method.
	altEvent
		rpackage:
			(RPackageOrganizer default
				packageForProtocol: anEvent protocol
				inClass: anEvent methodClass).
	self root aMethodAdded: altEvent