event handling
mouseStillDown: anEvent
	"Sent when we are stepping over a drag, and not moving."

	"What I would like: such a message (the stepMessage instance)
	to carry the stepIndex value and increment it. But the step API
	is not designed that way."

	| target |
	stepIndex := self stepIndex + 1 min: 100.
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
			[ (anEvent hand submorphs notEmpty
				and: [ anEvent hand submorphs first isSystemWindow not ])
				ifTrue:
					[ target := self model
						at:
							((self viewport rowIndexContainingPoint: anEvent position)
								ifNil: [ ^ self ]).
					target isExpanded
						ifFalse: [ target toggleExpanded.
							stepIndex := 0 ] ] ]