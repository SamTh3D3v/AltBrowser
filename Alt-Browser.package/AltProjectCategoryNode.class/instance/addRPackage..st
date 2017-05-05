accessing
addRPackage: aProjectAsItem
	"Prerequisite: aProjectAsItem is a key -> value association or something with a similar behavior."

	self assert: aProjectAsItem class == Association.
	^ super addRPackage: aProjectAsItem