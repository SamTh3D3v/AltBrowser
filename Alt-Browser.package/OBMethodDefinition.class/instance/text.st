callbacks
text
	^ source isNil 
		ifFalse: [ source asText makeSelectorBold ]
		ifTrue: [ self theClass sourceCodeTemplate ]