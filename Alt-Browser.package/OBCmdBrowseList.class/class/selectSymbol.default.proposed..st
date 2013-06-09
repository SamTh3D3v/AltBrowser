utilties
selectSymbol: aString default: aSymbol proposed: anArray
	| systemSymbols |
	^ OBCompletionRequest new
		prompt: aString;
		default: aSymbol;
		searchBlock: [ :value |
			(systemSymbols isNil and: [ aSymbol ~= value ]) ifTrue: [
				systemSymbols := IdentitySet new.
				Smalltalk globals allClassesAndTraitsDo: [ :each | 
					systemSymbols
						addAll: each selectors;
						addAll: each class selectors ].
				systemSymbols := systemSymbols sorted ].
			(systemSymbols isNil or: [ value isEmpty ])
				ifTrue: [ anArray ]
				ifFalse: [ systemSymbols select: [ :each | OBCompletionRequest subsequence: value matches: each caseSensitive: false ] ] ];
		signal.