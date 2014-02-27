querying
sourceCode
	"Get the source code through the parent."

	^ (self parent privateClass compiledMethodAt: self selector) sourceCode