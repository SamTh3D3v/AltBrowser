accessing
traceMoveSelectionIndexTo: anIndex
	"Make that a motion..."

	| iMotion sMotion startValue endValue estimateTime now |
	startValue := self verticalScrollBar value.
	endValue := self viewport verticalValueForIndex: anIndex.
	estimateTime := ((endValue - startValue) abs * 1000) rounded.
	now := Time millisecondClockValue.
	iMotion := AltTweenMotion new
		tween: AltTweenMotion easeInOutCubic;
		startTime: now;
		endTime: now + estimateTime;
		startValue: startValue;
		endValue: endValue;
		action: [ :value | self verticalScrollBar setValue: value ];
		yourself.
	sMotion := AltOneShotMotion new
		action: [ self selectRowIndex: anIndex ];
		yourself.
	self
		startStepping: #motionStep:
		at: now
		arguments: (Array with: (motion := iMotion + sMotion))
		stepTime: 1.
	AndreasSystemProfiler spyOnWorldFor: (estimateTime + 30) / 1000.0