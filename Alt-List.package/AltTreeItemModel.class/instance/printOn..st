printing
printOn: aStream
	aStream nextPutAll: 'Item('.
	self item printOn: aStream.
	aStream nextPut: $)