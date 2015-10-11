updating
changed
	"We have to tell the parent to change."

	parent
		ifNil: [ super changed: #refresh ]
		ifNotNil: [ parent changed ]