accessing
mouseWheel: anEvent
	"Slow at first, then fast with some inertia."

	model ifNil: [ ^ self ].
	self hasVerticalScrollBar
		ifFalse: [ ^ self ].
	self world
		ifNotNil:
			[ :w | 
			| t m |
			t := Time millisecondClockValue.
			m := AltTweenMotion new
				tween: AltTweenMotion easeInOutCubic;
				startTime: t;
				endTime: t + 100;
				startValue: self verticalScrollBar value;
				endValue:
					self verticalScrollBar value
						+
							(anEvent isUp
								ifTrue: [ 0.05 ]
								ifFalse: [ -0.05 ]);
				action: [ :value | self verticalScrollBar setValue: value ].
			motion := motion ifNil: [ m ] ifNotNil: [ motion mergeWith: m ].
			(w isStepping: self selector: #mouseWheelStep:)
				ifFalse:
					[ self
						startStepping: #mouseWheelStep:
						at: t
						arguments: {anEvent copy resetHandlerFields}
						stepTime: self mouseStillDownStepRate ] ]