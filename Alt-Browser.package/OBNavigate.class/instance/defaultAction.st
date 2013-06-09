configuration
defaultAction
	^ [fan children isEmpty
		ifTrue: [OBInformRequest message: self noChildrenMessage]
		ifFalse: [self browserClass browseRoot: fan parent label: self label]]