accessing
easeOutAt: aTime duration: aDuration change: aChange from: anInitialValue
	"aTime is here relative to 0."

	| t |
	t := aTime / aDuration asFloat.
	^ aChange negated * t * (t - 2) + anInitialValue