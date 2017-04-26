execution
execution
	"Depending on the state, lock or unlock the project."

	| item |
	item := requestor selectedNode item.
	item projectRegistration locked == true
		ifTrue: [ Metacello image
				project: item projectName;
				unlock ]
		ifFalse: [ Metacello image
				project: item projectName;
				lock ]