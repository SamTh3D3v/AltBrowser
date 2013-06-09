accessing
longLabel
	^ self cluster isNil
		ifTrue: [ self label ]
		ifFalse: [ self cluster , ' > ' , self label ]