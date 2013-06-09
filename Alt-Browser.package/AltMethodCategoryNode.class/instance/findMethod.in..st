querying
findMethod: aSelector in: aClass
	self sourceClass == aClass
		ifTrue: [ 
			self contents
				do: [ :each | 
					| res |
					(res := each findMethod: aSelector in: aClass) notNil
						ifTrue: [ ^ res ] ] ].
	^ nil