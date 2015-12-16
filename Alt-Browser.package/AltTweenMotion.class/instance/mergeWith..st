combining
mergeWith: aMotion
	"Special. Change target value from change sign; change time target value based on time change too."

	| s |
	s := (endValue - startValue)
		* (aMotion endValue - aMotion startValue).
	s > 0
		ifTrue:
			[ endTime := endTime + (aMotion endTime - aMotion startTime).
			endValue := endValue + (aMotion endValue - aMotion startValue) ]
		ifFalse:
			[ endTime := endTime - (aMotion endTime - aMotion startTime).
			endValue := endValue - (aMotion endValue - aMotion startValue) ].
	^ self