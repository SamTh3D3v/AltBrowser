accessing
easeInOutAt: aTime duration: aDuration change: aChange from: anInitialValue
	"aTime is here relative to 0."

	| t |
	t := aTime / (aDuration / 2.0).
	t < 1
		ifTrue: [ ^ aChange / 2.0 * t * t + anInitialValue ]
		ifFalse:
			[ t := t - 1.
			^ aChange negated / 2.0 * (t * (t - 2) - 1) + anInitialValue ]