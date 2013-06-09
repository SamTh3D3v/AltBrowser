actions
showPrettyPrint
	self definition: (OBMethodDefinition
		source: (target theClass compilerClass 
			format: target source in: target theClass
			notifying: nil) 
		inClass: target theClass)