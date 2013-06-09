querying
sourceCode
	"Get the source code through the parent."

	^ (self parentNode privateClass compiledMethodAt: self item) sourceCode