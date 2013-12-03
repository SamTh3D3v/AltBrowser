private
printPrefixes
	"Use the prefixes array."

	^ String
		streamContents: [ :stream | 
			self prefixes
				do: [ :aPrefix | 
					stream
						nextPutAll: aPrefix;
						nextPut: $/ ] ]