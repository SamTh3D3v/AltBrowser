initialization
model: anAltTreeItemModel
	"Announcements based. Do a reset of the positions and a refresh."

	"Need a way to fetch and position lazily the selection when starting."

	model ifNotNil: [ model announcer unsubscribe: self ].
	anAltTreeItemModel
		ifNotNil: [ anAltTreeItemModel announcer
				when: AltListChanged send: #refresh to: self;
				when: AltSelectionChanged send: #updateSelection: to: self ].
	model := anAltTreeItemModel.
	self resetPosition.
	self refresh