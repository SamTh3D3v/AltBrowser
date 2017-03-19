tweens
easeInOutQuintic
	^ [ :aTime :aDuration :aChange :anInitialValue | 
	| t |
	t := aTime / (aDuration / 2.0).
	t < 1
		ifTrue: [ aChange / 2.0 * (t ** 5) + anInitialValue ]
		ifFalse: [ aChange / 2.0 * ((t - 2) ** 5 + 2) + anInitialValue ] ]
	"aTime is here relative to 0."