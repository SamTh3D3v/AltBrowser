user interface
toggleExpanded
	"If one of our sub-element is selected, select myself since I will be collapsed.
	Use selectedItem direct access on root."

	self root selectedItem
		ifNotNil:
			[ :s | 
			(s ~~ self and: [ self anySatisfy: [ :e | e == s ] ])
				ifTrue: [ self root selectedItem: self ] ].
	self isExpanded: self isExpanded not.
	self changed