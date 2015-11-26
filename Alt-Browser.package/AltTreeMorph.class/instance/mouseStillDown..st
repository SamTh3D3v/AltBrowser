event handling
mouseStillDown: anEvent
	"Sent when we are stepping over a drag."

	| target |
	stepIndex := self stepIndex + 1.
	stepIndex > 25
		ifTrue:
			[ target := self model
				at:
					((self viewport rowIndexContainingPoint: anEvent position)
						ifNil: [ ^ self ]).
			target isExpanded
				ifFalse: [ target toggleExpanded.
					stepIndex := 0 ] ]