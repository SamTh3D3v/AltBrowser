updating
aRPackageRenamed: anEvent
	"When renaming a package, we will have to track that event. Interestingly, it apppears on both the SystemAnnouncer and RPackage organizer announcer. Moreover, the RPackage organizer announcer send three events :
	a RPackageUnregistered
	a RPackageRenamed
	a RPackageCreated
Where the system announcer receive only :
	a RPackageRenamed
And that there is no mention of a CategoryAdded and a CategoryRemoved events. Do those categories still exist?"

	"Not traced at the moment."