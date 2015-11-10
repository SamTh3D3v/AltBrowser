actions
toggleExpanded: aCodeItemModel
	parent ifNotNil: [ parent toggleExpanded: self ]