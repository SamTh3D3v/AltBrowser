accessing
model: anAltTreeItemModel
	"Announcements based."

	model ifNotNil: [ model announcer unsubscribe: self ].
	anAltTreeItemModel
		ifNotNil:
			[ anAltTreeItemModel announcer weak
				when: AltTreeChanged
				send: #refresh
				to: self ].
	model := anAltTreeItemModel