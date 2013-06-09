accessing
environment
	^ (super environment referencesTo: target theNonMetaClass binding)
		label: 'References to ' , target theNonMetaClassName