accessing
model: anAltTreeItemModel
	model ifNotNil: [ model removeDependent: self ].
	anAltTreeItemModel
		ifNotNil: [ anAltTreeItemModel addDependent: self ].
	model := anAltTreeItemModel