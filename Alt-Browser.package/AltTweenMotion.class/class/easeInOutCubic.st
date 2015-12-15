tweens
easeInOutCubic
	^ [ :aTime :aDuration :aChange :anInitialValue | 
	| t |
	t := aTime / (aDuration / 2.0).
	t < 1
		ifTrue: [ aChange / 2.0 * (t ** 3) + anInitialValue ]
		ifFalse: [ aChange / 2.0 * ((t - 2) ** 3 + 2) + anInitialValue ] ]
	"aTime is here relative to 0."