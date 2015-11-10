updating
changed
	"We have to tell the parent to change. By default, at top level, trigger a refresh."

	parent
		ifNil: [ announcer ifNotNil: [ :a | a announce: (AltTreeChanged on: self) ] ]
		ifNotNil: [ parent changed ]