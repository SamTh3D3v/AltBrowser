accessing
contents
	^ ((self watchpoints collect: [ :e | e compiledMethod methodClass ])
		asSet collect: [ :e | AltWatchpointsClassNode with: e parent: self ])
		asOrderedCollection