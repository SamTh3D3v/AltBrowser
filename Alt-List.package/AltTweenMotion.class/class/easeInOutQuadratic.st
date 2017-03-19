tweens
easeInOutQuadratic
	^ [ :aTime :aDuration :aChange :anInitialValue | 
	| t |
	t := aTime / (aDuration / 2.0).
	t < 1
		ifTrue: [ aChange / 2.0 * t * t + anInitialValue ]
		ifFalse:
			[ t := t - 1.
			aChange negated / 2.0 * (t * (t - 2) - 1) + anInitialValue ] ]
	"aTime is here relative to 0."