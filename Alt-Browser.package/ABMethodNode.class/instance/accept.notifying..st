actions
accept: aText notifying: aController
	"Compile the method. All accept: methods should return the relevant object created or modified, for tracking by the GUI."

	"There is something about notifying here."

	| aSelector |
	aSelector := self sourceClass compile: aText classified: self parentNode methodCategory notifying: aController.
	^ self parentNode contents detect: [ :each | each item == aSelector ]