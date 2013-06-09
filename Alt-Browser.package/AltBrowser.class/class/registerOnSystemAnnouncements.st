initialization
registerOnSystemAnnouncements
	"Global registration to update the list."

	"self registerOnSystemAnnouncements."

	"SystemAnnouncer announcer unsubscribe: self"

	SystemAnnouncer announcer weak
		on: MCWorkingCopyCreated send: #aMCWorkingCopyCreated: to: self;
		on: MCWorkingCopyDeleted send: #aMCWorkingCopyDeleted: to: self;
		on: CategoryRemoved send: #aCategoryRemoved: to: self;
		on: MethodAdded send: #aMethodAdded: to: self;
		on: MethodRemoved send: #aMethodRemoved: to: self