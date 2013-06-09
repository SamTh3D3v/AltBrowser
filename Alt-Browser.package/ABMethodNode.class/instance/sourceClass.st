as yet unclassified
sourceClass
	"Get the class through the parent."

	^ (self parentNode parentNode item compiledMethodAt: self item) methodClass