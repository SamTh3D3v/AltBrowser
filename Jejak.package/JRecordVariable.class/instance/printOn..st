printing
printOn: aStream 
	(var isKindOf: Array) 
		ifTrue: 
			[aStream nextPutAll: '| '.
			var do: 
					[:e | 
					aStream
						nextPutAll: e;
						space].
			aStream nextPut: $|]
		ifFalse: [aStream nextPutAll: var]