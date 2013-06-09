updating
aMethodRemoved: anEvent
	"Ok, a method was removed. Don't forget the method may be in multiple places."
	
	"Change this code; search for places where the method is visible (extensions and protocols)."

	| mCNodes |
	self rootItems contents
		do: [ :root | 
			| res |
			res := root findAllMethodParents: anEvent selector forClass: anEvent methodClass.
			res notNil
				ifTrue: [ 
					mCNodes isNil
						ifTrue: [ mCNodes := res ]
						ifFalse: [ mCNodes addAll: res ] ] ].
	mCNodes isNil ifTrue: [^ self].
	mCNodes
		do: [ :each | 
			each contentsNotNil
				ifTrue: [ 
					| s |
					each contents remove: (s := each findMethod: anEvent selector).
					announcer announce: (AltNodeRemoved node: s) ] ]