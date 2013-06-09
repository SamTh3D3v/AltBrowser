testing
isActive
"	(self class takesText and: [ target isKindOf: OBTextSelection ])
		ifTrue: [ ^ true ].
"	(self class takesNodes and: [ requestor isSelected: target ])
		ifTrue: [ ^ true ].
	^ false