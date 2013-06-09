class definition
defineClass: definition notifying: aController
	| change |
	(self confirmDefinition: definition)
		ifFalse: [ ^ false ].
	change := RBRefactoryDefinitionChange
		definition: definition for: aController.
	RBRefactoryChangeManager instance
		performChange: change.
	change definedClass ifNil: [ ^ false ].
	self signalSelectionOf: change definedClass.
	^ true
