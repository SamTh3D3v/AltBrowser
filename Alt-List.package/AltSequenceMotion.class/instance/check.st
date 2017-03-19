animating
check
	"Iterate over the next step in the animation"

	motions first check ifNil: [ motions removeFirst ].
	motions isEmpty
		ifTrue: [ ^ nil ].
	^ self