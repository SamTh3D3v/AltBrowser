confirmation
confirmRedefinition: definition
	| newName answer |
	newName := self nameOfClassDefinedBy: definition.
	answer := OBConfirmationRequest
		prompt: newName , ' is an existing class in this system. Redefining it might cause serious problems. Is this really what you want to do?'
		confirm: 'Redefine'.
	^ answer ifNil: [false]