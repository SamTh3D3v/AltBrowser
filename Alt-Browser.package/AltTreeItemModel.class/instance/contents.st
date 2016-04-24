accessing
contents
	^ self isExpanded
		ifFalse: [ ^ #() ]
		ifTrue: [ contents
				ifNil: [ self
						contents:
							(self childrenItems collect: [ :ci | self childNodeFromItem: ci ]) ] ]