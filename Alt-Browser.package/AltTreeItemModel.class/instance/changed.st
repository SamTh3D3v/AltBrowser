updating
changed
	"We have to tell the parent to change. By default, at top level, trigger a refresh."

	"Our size is cached."

	size := nil.
	parent
		ifNil: [ announcer ifNotNil: [ :a | a announce: (AltTreeChanged on: self) ] ]
		ifNotNil: [ parent changed ]