event handling
mouseWheel: event
	"Soft-coded. Fast, feels ok for two-finger scrolling on keypad."

	"Slow at first, then fast with some inertia would be way cool. Could be done by: start stepping on a mouse wheel first event, increase step for each mouse wheel event, let step decrease by itself until stop."

	model ifNil: [ ^ self ].
	self hasVerticalScrollBar ifFalse: [ ^ self ].
	event isUp
		ifTrue:
			[ ^ self verticalScrollBar
				scrollUp: self verticalScrollBar pageDelta / self verticalScrollBar scrollDelta / 3 ].
	event isDown
		ifTrue:
			[ ^ self verticalScrollBar
				scrollDown: self verticalScrollBar pageDelta / self verticalScrollBar scrollDelta / 3 ].
	super mouseWheel: event