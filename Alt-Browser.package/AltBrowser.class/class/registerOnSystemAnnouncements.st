initialization
registerOnSystemAnnouncements
	"Global registration to update the list."

	"self registerOnSystemAnnouncements."

	SystemAnnouncer uniqueInstance unsubscribe: self.
	SystemAnnouncer uniqueInstance weak
		on: MCWorkingCopyCreated send: #aMCWorkingCopyCreated: to: self;
		on: MCWorkingCopyDeleted send: #aMCWorkingCopyDeleted: to: self;
		on: MCPackageModified send: #aMCWorkingCopyModified: to: self;
		on: CategoryRemoved send: #aCategoryRemoved: to: self;
		on: CategoryAdded send: #aCategoryAdded: to: self;
		on: MethodAdded send: #aMethodAdded: to: self;
		on: MethodRemoved send: #aMethodRemoved: to: self;
		on: MethodRecategorized send: #aMethodRecategorized: to: self;
		on: ClassAdded send: #aClassAdded: to: self;
		on: ClassRemoved send: #aClassRemoved: to: self;
		on: ClassReorganized send: #aClassReorganized: to: self;
		on: ClassCommented send: #aClassCommented: to: self;
		on: ClassRenamed send: #aClassRenamed: to: self;
		on: ClassRepackaged send: #aClassRepackaged: to: self.
	RPackage organizer announcer unsubscribe: self.
	RPackage organizer announcer weak
		on: RPackageUnregistered send: #aRPackageUnregistered: to: self;
		on: RPackageCreated send: #aRPackageCreated: to: self.