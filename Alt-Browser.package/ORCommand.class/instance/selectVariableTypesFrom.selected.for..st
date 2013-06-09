actions
selectVariableTypesFrom: aCollectionOfTypes selected: aSelectedCollection for: aRefactoring
	| stream result |
	stream := WriteStream on: String new.
	aCollectionOfTypes
		do: [ :each | stream nextPutAll: each name ]
		separatedBy: [ stream cr ].
	result := OBMultiLineTextRequest
		prompt: 'Select classes to move to:'
		template: stream contents.
	result isNil
		ifTrue: [ ^ self uiCancellationError ].
	^ (result findTokens: String crlf)
		collect: [ :each | aRefactoring model classFor: (Smalltalk classNamed: each trimBoth) ]
		