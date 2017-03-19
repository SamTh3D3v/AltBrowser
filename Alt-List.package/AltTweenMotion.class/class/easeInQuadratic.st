tweens
easeInQuadratic
	^ [ :aTime :aDuration :aChange :anInitialValue | 
	| t |
	t := aTime / aDuration asFloat.
	^ aChange * t * t + anInitialValue ]