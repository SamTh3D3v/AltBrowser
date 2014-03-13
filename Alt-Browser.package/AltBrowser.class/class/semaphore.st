accessing
semaphore
	semaphore ifNil: [ semaphore := Semaphore forMutualExclusion ].
	^ semaphore