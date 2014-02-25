querying
findMethod: aSelector in: aClass
	"Filter out: force contents building if the class belongs to this package."

	| res |
	(self packageTag
		hasClass:
			(aClass isMeta
				ifTrue: [ aClass baseClass ]
				ifFalse: [ aClass ]))
		ifTrue: [ 
			self contents
				do: [ :each | 
					(res := each findMethod: aSelector in: aClass) notNil
						ifTrue: [ ^ res ] ] ].
	^ nil