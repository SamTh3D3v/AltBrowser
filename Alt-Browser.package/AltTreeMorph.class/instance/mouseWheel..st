event handling
mouseWheel: event
	"Hardcoded, but seems need some tuning."

	"Slow at first, then fast with some inertia would be way cool."

	model ifNil: [ ^ self ].
	event isUp
		ifTrue: [ ^ self verticalScrollBar scrollUp: 10 ].
	event isDown
		ifTrue: [ ^ self verticalScrollBar scrollDown: 10 ].
	super mouseWheel: event