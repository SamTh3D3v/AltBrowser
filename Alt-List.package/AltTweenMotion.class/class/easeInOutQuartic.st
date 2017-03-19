tweens
easeInOutQuartic
	^ [ :aTime :aDuration :aChange :anInitialValue | 
	| t |
	t := aTime / (aDuration / 2.0).
	t < 1
		ifTrue: [ aChange / 2.0 * (t ** 4) + anInitialValue ]
		ifFalse: [ aChange negated / 2.0 * ((t - 2) ** 4 - 2) + anInitialValue ] ]
	"aTime is here relative to 0."