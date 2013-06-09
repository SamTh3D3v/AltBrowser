as yet unclassified
sourceCode
	"Get the source code through the parent."

	^ (self parentNode parentNode item compiledMethodAt: self item) sourceCode