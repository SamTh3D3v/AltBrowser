querying
sourceCode
	"A description of the group."

	^ self projectRegistration
		ifNotNil: [ :pr | pr printString ]
		ifNil: [ 'Project : ' , self categoryName ]