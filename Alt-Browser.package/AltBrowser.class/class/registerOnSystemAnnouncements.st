initialization
registerOnSystemAnnouncements
	"Global registration to update the list."

	"self registerOnSystemAnnouncements."

	"SystemAnnouncer uniqueInstance unsubscribe: self"

	SystemAnnouncer uniqueInstance weak
		on: MCWorkingCopyCreated send: #aMCWorkingCopyCreated: to: self;
		on: MCWorkingCopyDeleted send: #aMCWorkingCopyDeleted: to: self;
		on: CategoryRemoved send: #aCategoryRemoved: to: self;
		on: MethodAdded send: #aMethodAdded: to: self;
		on: MethodRemoved send: #aMethodRemoved: to: self;
		on: ClassAdded send: #aClassAdded: to: self;
		on: ClassRemoved send: #aClassRemoved: to: self