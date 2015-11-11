updating
doAnnounce: anEvent
	"Only announce if we have an announcer..."

	announcer ifNotNil: [ :a | a announce: anEvent ]