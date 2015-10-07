accessing
contents
	^ self isExpanded
		ifFalse: [ ^ #() ]
		ifTrue:
			[ contents
				ifNil:
					[ contents := self childrenItems
						collect: [ :ci | self childNodeFromItem: ci ] ] ]