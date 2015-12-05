selection
selectAt: anIndex
	(item selectIn: self root model)
		ifFalse: [ super selectAt: anIndex ]