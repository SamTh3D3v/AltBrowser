updating
aWatchpointUninstalled: anEvent
	"Reset the history of pre-existing packages"

	self rootItems do: [ :e | e aWatchpointUninstalled: anEvent ]