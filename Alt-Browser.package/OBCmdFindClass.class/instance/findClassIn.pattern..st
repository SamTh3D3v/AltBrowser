private
findClassIn: anEnvironment pattern: aString
	^ (anEnvironment classNames
		select: [ :each | OBCompletionRequest subsequence: aString matches: each caseSensitive: false ])
		asSortedCollection collect: [ :each | anEnvironment at: each ]