instance creation
fullOnMethods: aListOfCM
	"Given a list of compiled methods, open, and preselect all of them."

	| selectorEnvironment |
	selectorEnvironment := RBSelectorEnvironment new.
	aListOfCM do: [ :each | selectorEnvironment addClass: each methodClass selector: each selector ].
	^ (self fullOnEnvironment: selectorEnvironment) expandAllNodes