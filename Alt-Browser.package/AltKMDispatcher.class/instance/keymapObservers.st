dispatching
keymapObservers
	| o |
	(o := OrderedCollection with: self perInstanceTarget)
		addAll: self targets.
	^ o