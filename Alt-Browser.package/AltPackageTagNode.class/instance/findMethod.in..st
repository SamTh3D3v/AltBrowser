querying
findMethod: aSelector in: aClass
	"Filter out: force contents building if the class belongs to this package."

	| res |
	(self packageTag
		ifNotNil: [ :aTag | 
			aTag
				hasClass:
					(aClass isMeta
						ifTrue: [ aClass baseClass ]
						ifFalse: [ aClass ]) ]
		ifNil: [ false ])
		ifTrue: [ 
			self contents
				do: [ :each | 
					(res := each findMethod: aSelector in: aClass) notNil
						ifTrue: [ ^ res ] ] ].
	^ nil
