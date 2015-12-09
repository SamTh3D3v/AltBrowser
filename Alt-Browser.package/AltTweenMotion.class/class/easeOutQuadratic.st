tweens
easeOutQuadratic
	^ [ :aTime :aDuration :aChange :anInitialValue | 
	| t |
	t := aTime / aDuration asFloat.
	^ aChange negated * t * (t - 2) + anInitialValue ]