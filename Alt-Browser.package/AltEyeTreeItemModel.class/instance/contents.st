accessing
contents
	^ self isExpanded
		ifFalse: [ ^ #() ]
		ifTrue: [ contents
				ifNil: [ self
						contents:
							(self gtChildrenItems collect: [ :gci | AltTreeGTILabelModel on: gci ])
								, (self childrenItems collect: [ :ci | self childNodeFromItem: ci ]) ] ]