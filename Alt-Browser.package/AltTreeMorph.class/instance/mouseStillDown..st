event handling
mouseStillDown: anEvent
	"Sent when we are stepping over a drag."

	| target |
	stepIndex := self stepIndex + 1 max: 30.
	(self bounds containsPoint: anEvent position)
		ifTrue:
			[ (self verticalScrollBar value > 0
				and: [ anEvent position y <= (self top + 10) ])
				ifTrue: [ ^ self verticalScrollBar scrollUp: stepIndex / 10.0 ].
			(self verticalScrollBar value < 1
				and:
					[ anEvent position y
						>= (self bottom - 10 - self horizontalScrollBarHeight) ])
				ifTrue: [ ^ self verticalScrollBar scrollDown: stepIndex / 10.0 ] ].
	stepIndex > 25
		ifTrue:
			[ target := self model
				at:
					((self viewport rowIndexContainingPoint: anEvent position)
						ifNil: [ ^ self ]).
			target isExpanded
				ifFalse: [ target toggleExpanded.
					stepIndex := 0 ] ]