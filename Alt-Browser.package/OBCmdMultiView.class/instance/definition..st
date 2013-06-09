accessing
definition: aDefinition
	(requestor announce: OBAboutToChange) isVetoed 
		ifFalse: [ requestor announce: (OBDefinitionChanged definition: aDefinition) ]