animating
at: aTime
	"Return the value for that time (in milliseconds)"

	^ self tween
		easeInOutAt: aTime - startTime
		duration: endTime - startTime
		change: endValue - startValue
		from: startValue