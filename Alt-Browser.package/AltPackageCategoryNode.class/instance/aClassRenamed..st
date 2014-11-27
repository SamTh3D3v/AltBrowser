updating
aClassRenamed: anEvent
	"Pass through that event."

	self contents do: [ :each | each aClassRenamed: anEvent ]