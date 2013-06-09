querying
findMethod: aSelector in: aClass
	"An optimisation, but it doesn't work. At the moment, too slow to be used as a method list browser."

	| res |
	self item isMeta
		ifTrue: [ 
			aClass == item
				ifTrue: [ 
					self contents
						do: [ :each | 
							(res := each findMethod: aSelector in: aClass) notNil
								ifTrue: [ ^ res ] ] ] ]
		ifFalse: [ 
			aClass == item
				ifTrue: [ 
					self contents
						do: [ :each | 
							(res := each findMethod: aSelector in: aClass) notNil
								ifTrue: [ ^ res ] ] ]
				ifFalse: [ ^ self contents first findMethod: aSelector in: aClass ] ].
	^ nil