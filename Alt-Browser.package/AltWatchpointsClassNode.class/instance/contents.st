accessing
contents
	^ contents
		ifNil:
			[ contents := self watchpoints
				collect: [ :e | AltWatchpointNode with: e parent: self ] ]