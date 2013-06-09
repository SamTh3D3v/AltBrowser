accessing-conveniance
chooseMultipleFrom: anArray title: aString lines: aCollection 
	^ anArray isEmpty
		ifTrue: [ anArray copyEmpty ]
		ifFalse: [
			(OBMultipleChoiceRequest prompt: aString labels: anArray values: anArray lines: aCollection)
				ifNil: [ self uiCancellationError ] ]