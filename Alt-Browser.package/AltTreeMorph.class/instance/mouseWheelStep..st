event handling
mouseWheelStep: event
	"Slow at first, then fast with some inertia would be way cool. Could be done by: start stepping on a mouse wheel first event, increase step for each mouse wheel event, let step decrease by itself until stop."

	model ifNil: [ ^ self ].
	self hasVerticalScrollBar
		ifFalse: [ ^ self ].
	event isUp
		ifTrue: [ self verticalScrollBar scrollUp: wheelIndex ].
	event isDown
		ifTrue: [ self verticalScrollBar scrollDown: wheelIndex ].
	wheelSpeedTarget := self wheelSpeedTarget - 2.
	wheelIndex := self wheelIndex
		+
			(wheelSpeedTarget > self wheelIndex
				ifTrue: [ 2 ]
				ifFalse: [ -2 ]).
	wheelIndex isZero
		ifTrue: [ self stopSteppingSelector: #mouseWheelStep: ]