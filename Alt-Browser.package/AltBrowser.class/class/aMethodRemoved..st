updating
aMethodRemoved: anEvent
	"Ok, a method was removed. Don't forget the method may be in multiple places."

	| mCNodes |
	self rootItems
		do: [ :root | 
			| res |
			res := root findAllMethodCategory: anEvent itemProtocol forClass: anEvent itemClass.
			res notNil
				ifTrue: [ 
					mCNodes isNil
						ifTrue: [ mCNodes := res ]
						ifFalse: [ mCNodes addAll: res ] ] ].
	mCNodes
		do: [ :each | 
			each contentsNotNil
				ifTrue: [ 
					| s |
					each contents remove: (s := each findMethod: anEvent itemSelector).
					self allInstances do: [ :i | i removeNode: s ] ] ]