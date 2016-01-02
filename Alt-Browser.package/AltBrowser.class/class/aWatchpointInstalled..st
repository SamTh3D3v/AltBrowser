updating
aWatchpointInstalled: anEvent
	"Reset the history of pre-existing packages"

	self rootItems do: [ :e | e aWatchpointInstalled: anEvent ]