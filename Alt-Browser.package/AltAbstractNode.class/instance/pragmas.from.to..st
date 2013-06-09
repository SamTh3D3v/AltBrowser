querying
pragmas: aSymbol from: aClass to: aTarget
	"A safe way to find pragmas in a class hierarchy."

	| pragmas |
	pragmas := OrderedCollection new.
	(aClass allSelectorsBelow: aTarget superclass)
		do: [ :selector | 
			(aClass lookupSelector: selector) pragmas
				do: [ :pragma | 
					pragma key == aSymbol
						ifTrue: [ pragmas add: pragma ] ] ].
	^ pragmas