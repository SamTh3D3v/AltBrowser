accessing
isExpanded: aBoolean
	expanded := aBoolean.
	expanded
		ifFalse: [ contents := nil ]