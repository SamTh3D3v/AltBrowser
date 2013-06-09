querying
sourceClass
	"Get the class through the parent."

	^ (self parentNode privateClass compiledMethodAt: self item) methodClass