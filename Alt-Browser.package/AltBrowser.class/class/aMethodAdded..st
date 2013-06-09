updating
aMethodAdded: anEvent
	"Ok, a method was added. Does not mean modify. Works."

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
	mCNodes isNil
		ifTrue: [ ^ self ].
	mCNodes
		do: [ :each | 
			each contentsNotNil
				ifTrue: [ 
					| s |
					s := each addChild: anEvent selector.
					announcer announce: (AltNodeAdded node: s) ] ]