selection
selectedIndex
	"Get current selection."

	| i sIndex |
	i := 0.
	sIndex := 0.
	self
		anySatisfy:
			[ :e | 
			i := i + 1.
			e selected
				ifTrue: [ sIndex := i.
					true ]
				ifFalse: [ false ] ].
	^ sIndex