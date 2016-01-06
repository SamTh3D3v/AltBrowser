class initialization
registerOnSystemAnnouncements
	"Global registration to update the list."

	"self registerOnSystemAnnouncements."

	"I do need to track system categories. RPackageTag is a bit erratic, yet. Not tracking ProtocolRemoved and ProtocolAdded."

	SystemAnnouncer uniqueInstance unsubscribe: self.
	SystemAnnouncer uniqueInstance weak
		when: MCWorkingCopyCreated send: #aMCWorkingCopyCreated: to: self;
		when: MCWorkingCopyDeleted send: #aMCWorkingCopyDeleted: to: self;
		when: MCPackageModified send: #aMCWorkingCopyModified: to: self;
		when: CategoryAdded send: #aCategoryAdded: to: self;
		when: CategoryRemoved send: #aCategoryRemoved: to: self;
		when: CategoryRenamed send: #aCategoryRenamed: to: self;
		when: MethodAdded send: #aMethodAdded: to: self;
		when: MethodRemoved send: #aMethodRemoved: to: self;
		when: MethodRecategorized send: #aMethodRecategorized: to: self;
		when: ClassAdded send: #aClassAdded: to: self;
		when: ClassRemoved send: #aClassRemoved: to: self;
		when: ClassReorganized send: #aClassReorganized: to: self;
		when: ClassCommented send: #aClassCommented: to: self;
		when: ClassRenamed send: #aClassRenamed: to: self;
		when: ClassRepackaged send: #aClassRepackaged: to: self;
		when: ClassRecategorized send: #aClassRecategorized: to: self;
		when: ClassModifiedClassDefinition send: #aClassModifiedClassDefinition: to: self;
		when: MetalinkChanged send: #aMetalinkChanged: to: self.
	RPackage organizer announcer unsubscribe: self.
	RPackage organizer announcer weak
		when: RPackageUnregistered send: #aRPackageUnregistered: to: self;
		when: RPackageRegistered send: #aRPackageCreated: to: self