accessing-conveniance
confirm: aString
	^ (OBConfirmationRequest prompt: aString confirm: 'Yes' cancel: 'No')
		ifNil: [ self uiCancellationError ]