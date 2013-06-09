execution
execute
	| definition |
	definition := self templateDefinition.
	definition isNil ifFalse: [ requestor announce: (OBDefinitionChanged definition: definition) ]