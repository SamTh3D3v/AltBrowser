tree accessing
at: anIndex ifAbsent: aBlock
	"Return a specific element."

	| found count |
	count := 0.
	found := nil.
	(self
		anySatisfy:
			[ :e | 
			count := count + 1.
			count == anIndex
				ifTrue: [ found := e.
					true ]
				ifFalse: [ false ] ])
		ifTrue: [ ^ found ].
	^ aBlock value