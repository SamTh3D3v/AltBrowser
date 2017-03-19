printing
printOn: aStream
	(selector isKindOf: Symbol)
		ifTrue: [selector printOn: aStream]
		ifFalse: [aStream nextPutAll: selector]