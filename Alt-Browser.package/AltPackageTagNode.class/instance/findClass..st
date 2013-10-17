querying
findClass: aClass
	"Filter out: force contents building if the class belongs to this package."
	
	| res |
	(self item hasClass: aClass)
		ifTrue: [ self contents do: [ :each | 
							(res := each findClass: aClass) notNil
								ifTrue: [ ^ res ]] ].
	^ nil