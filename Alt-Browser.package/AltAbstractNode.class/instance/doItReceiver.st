querying
doItReceiver
	"Should return an object as a context (class) for compilation."

	^ self sourceClass ifNotNil: [ :sc | sc theNonMetaClass ]