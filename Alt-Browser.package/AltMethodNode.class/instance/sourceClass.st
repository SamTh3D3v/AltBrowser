querying
sourceClass
	"Get the class through the parent."

	^ (self parent privateClass compiledMethodAt: self selector) methodClass