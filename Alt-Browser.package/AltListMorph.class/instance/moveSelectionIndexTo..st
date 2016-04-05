accessing-selection
moveSelectionIndexTo: anIndex
	"Make that a motion..."

	| iMotion sMotion startValue endValue estimateTime |
	self hasVerticalScrollBar
		ifFalse: [ ^ self selectRowIndex: anIndex ].
	startValue := self verticalScrollBar value.
	startValue ifNil: [ ^ self selectRowIndex: anIndex ].
	endValue := self viewport verticalValueForIndex: anIndex.
	estimateTime := ((endValue - startValue) abs * 200) rounded.
	iMotion := AltTweenMotion new
		tween: AltTweenMotion easeInOutCubic;
		startTime: Time millisecondClockValue;
		endTime: Time millisecondClockValue + estimateTime;
		startValue: startValue;
		endValue: endValue;
		action: [ :value | self verticalScrollBar setValue: value ];
		yourself.
	sMotion := AltOneShotMotion new
		action: [ self selectRowIndex: anIndex ];
		yourself.
	self
		startStepping: #motionStep:
		at: Time millisecondClockValue
		arguments: (Array with: (motion := iMotion + sMotion))
		stepTime: 1