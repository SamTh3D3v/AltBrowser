updating
changed
	"We have to tell the parent to change. By default, at top level, trigger a refresh."

	"I'm not maintaining the selection. Which I should take care of."

	parent
		ifNil:
			[ announcer
				ifNotNil: [ :a | 
					a announce: (AltTreeChanged on: self).
					self updateSelection ] ]
		ifNotNil: [ parent changed ]