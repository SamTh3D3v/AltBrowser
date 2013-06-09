updating
aMethodAdded: anEvent
	"Ok, a method was added. Things to search for: extensions! If the method is an extension, update that part as well (and at the package extension level, since it may be necessary to add the class node as well). Use the findAllMethodParents: for that."

	| mCNodes |
	self roots
		do: [ :root | 
			| res |
			res := root findAllMethodParents: anEvent selector forClass: anEvent methodClass.
			res notNil
				ifTrue: [ 
					mCNodes isNil
						ifTrue: [ mCNodes := res ]
						ifFalse: [ mCNodes addAll: res ] ] ].
	mCNodes isNil
		ifTrue: [ ^ self ].
	mCNodes do: [ :each | self aNodeToRebuilt: each ]