accessing-conveniance
prompt: aString initialAnswer: aTemplateString
	^ (OBMultiLineTextRequest prompt: aString template: aTemplateString)
		ifNil: [ self uiCancellationError ]