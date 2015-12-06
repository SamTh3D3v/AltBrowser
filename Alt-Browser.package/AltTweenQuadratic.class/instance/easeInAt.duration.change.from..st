accessing
easeInAt: aTime duration: aDuration change: aChange from: anInitialValue
	"aTime is here relative to 0."

	| t |
	t := aTime / aDuration asFloat.
	^ aChange * t * t + anInitialValue