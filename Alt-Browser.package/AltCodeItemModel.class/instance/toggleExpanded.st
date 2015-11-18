user interface
toggleExpanded
	"Ensure we don't toggle if we have changes."

	self root selectedItem
		ifNotNil:
			[ :s | 
			(s ~~ self and: [ self anySatisfy: [ :e | e == s ] ])
				ifTrue:
					[ (self root model notNil
						and:
							[ self root model textMorph notNil
								and: [ self root model textMorph hasUnacceptedEdits ] ])
						ifTrue: [ ^ self ] ] ].
	super toggleExpanded