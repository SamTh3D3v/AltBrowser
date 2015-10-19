updating
changed
	"We have to tell the parent to change. By default, at top level, trigger a refresh."

	parent
		ifNil: [ super changed: #refresh ]
		ifNotNil: [ parent changed ]