drag and drop
dropItem: anItem on: aTarget
	"This is called. Yes, really."

	aTarget notNil
		ifTrue: [ aTarget dropItem: anItem ]