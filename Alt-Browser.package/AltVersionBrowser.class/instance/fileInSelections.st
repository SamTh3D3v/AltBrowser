menu actions
fileInSelections
	"Instead of a ChangeRecord fileIn, we have a MCMethodDefinition we can install."

	| methodAdditions |
	methodAdditions := OrderedCollection new.
	listSelections
		with: changeList
		do: [ :selected :item | 
			selected
				ifTrue: [ item addMethodAdditionTo: methodAdditions ] ].
	methodAdditions do: [ :each | each installMethod ].
	methodAdditions do: [ :each | each notifyObservers ].
	self reformulateList