event handling
mouseWheel: event
	model ifNil: [ ^ self ].
	"I tried scrolling up/down with a calculated value (check #scrollUpByPageDelta implementor)
	 but the scrollbar proved been more intelligent than me... looks like hardcoded values 
	 work better :/"
	event isUp
		ifTrue: [ ^ self verticalScrollBar scrollUp: 3 ].
	event isDown
		ifTrue: [ ^ self verticalScrollBar scrollDown: 3 ].
	super mouseWheel: event