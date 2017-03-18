accessing
contents
	^ contents
		ifNil: [ contents := (Array
				with: (AltRecentPackagesNode with: nil parent: self)
				with: (AltWatchpointsNode with: nil parent: self))
				, super contents ]