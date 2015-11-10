actions
toggleExpanded: aCodeItemModel
	size := nil.
	parent ifNotNil: [ parent toggleExpanded: self ]