printing
oldPrintOn: aStream 
	| indent b |
	indent := ''.
	b := 
			[:a | 
			a hasChildren 
				ifTrue: 
					[aStream
						nextPutAll: indent , a printString;
						cr.
					indent := indent , '    '.
					a children do: [:el | b value: el value].
					indent := indent copyFrom: 1 to: indent size - 4]
				ifFalse: 
					[aStream
						nextPutAll: indent , a printString;
						cr]].
	b value: stack first