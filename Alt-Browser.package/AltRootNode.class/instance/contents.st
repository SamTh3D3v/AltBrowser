accessing
contents
	^ contents
		ifNil:
			[ contents := {(AltRecentPackagesNode with: nil parent: self).
			(AltWatchpointsNode with: nil parent: self)} , super contents ]