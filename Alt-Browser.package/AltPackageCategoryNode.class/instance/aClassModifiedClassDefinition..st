updating
aClassModifiedClassDefinition: anEvent
	"Pass through that event."

	self contents do: [ :each | each aClassModifiedClassDefinition: anEvent ]