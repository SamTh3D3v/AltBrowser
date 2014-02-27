querying
findMethod: aSelector in: aClass
	"Ok. Forced version. May need to force on a case by case basis."

	| res |
	aClass == self itemClass
		ifTrue: [ 
			self contents
				do: [ :each | 
					(res := each findMethod: aSelector in: aClass) notNil
						ifTrue: [ ^ res ] ] ]
		ifFalse: [ 
			self contents isEmpty
				ifFalse: [ ^ self contents first findMethod: aSelector in: aClass ] ].
	^ nil