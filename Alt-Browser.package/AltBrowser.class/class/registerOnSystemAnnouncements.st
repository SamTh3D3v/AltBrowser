initialization
registerOnSystemAnnouncements
	"Global registration to update the list."

	"self registerOnSystemAnnouncements."

	"SystemAnnouncer announcer unsubscribe: self"

	SystemAnnouncer announcer weak
		on: MCWorkingCopyCreated send: #aMCWorkingCopyCreated: to: self;
		on: MCWorkingCopyDeleted send: #aMCWorkingCopyDeleted: to: self