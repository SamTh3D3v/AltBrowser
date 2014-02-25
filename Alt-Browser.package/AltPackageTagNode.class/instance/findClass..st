querying
findClass: aClass
	"Filter out: force contents building if the class belongs to this package."
	
	"Will that work if I'm looking for a trait class? It seems a trait class meta side has no base class."

	| res |
	(self item
		hasClass:
			(aClass isMeta
				ifTrue: [ aClass baseClass ]
				ifFalse: [ aClass ]))
		ifTrue: [ 
			self contents
				do: [ :each | 
					(res := each findClass: aClass) notNil
						ifTrue: [ ^ res ] ] ].
	^ nil