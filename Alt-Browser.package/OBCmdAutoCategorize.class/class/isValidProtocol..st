testing
isValidProtocol: aSymbol
	^ aSymbol notNil and: [ (aSymbol beginsWith: '*') not and: [ (IgnoredCategories includes: aSymbol) not ] ]