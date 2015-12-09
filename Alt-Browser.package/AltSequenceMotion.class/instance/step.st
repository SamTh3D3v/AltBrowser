animating
step
	"Iterate over the next step in the animation"

	motions first step ifNil: [ motions removeFirst ].
	motions isEmpty
		ifTrue: [ ^ nil ].
	^ self