accessing
contents
	^ self watchpoints
		collect: [ :e | AltWatchpointNode with: e parent: self ]