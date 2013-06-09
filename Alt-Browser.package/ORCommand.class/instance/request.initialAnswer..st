accessing-conveniance
request: aString initialAnswer: aTemplateString
	^ (OBTextRequest prompt: aString template: aTemplateString)
		ifNil: [ self uiCancellationError ]