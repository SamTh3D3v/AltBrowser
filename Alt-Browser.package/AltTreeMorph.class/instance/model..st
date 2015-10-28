accessing
model: anAltTreeItemModel
	"Announcements based. Do a reset of the positions and a refresh."

	model ifNotNil: [ model announcer unsubscribe: self ].
	anAltTreeItemModel
		ifNotNil:
			[ anAltTreeItemModel announcer weak
				when: AltTreeChanged
				send: #refresh
				to: self ].
	model := anAltTreeItemModel.
	self resetPosition.
	self refresh