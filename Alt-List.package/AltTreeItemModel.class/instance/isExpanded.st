testing
isExpanded
	^ parent
		ifNil: [ true ]
		ifNotNil: [ expanded ifNil: [ expanded := false ] ]