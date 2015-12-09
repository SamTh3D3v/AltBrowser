event handling
moveSelectionIndexTo: anIndex
	"Make that a motion..."

	| iMotion sMotion |
	iMotion := AltTweenMotion new
		tween: AltTweenMotion easeInOutQuadratic;
		startTime: Time millisecondClockValue;
		endTime: Time millisecondClockValue + 500;
		startValue: self verticalScrollBar value;
		endValue: (self viewport verticalValueForIndex: anIndex);
		action: [ :value | self verticalScrollBar setValue: value ];
		yourself.
	sMotion := AltOneShotMotion new
		action: [ self selectRowIndex: anIndex ];
		yourself.
	self
		startStepping: #motionStep:
		at: Time millisecondClockValue
		arguments: (Array with: iMotion + sMotion)
		stepTime: 1