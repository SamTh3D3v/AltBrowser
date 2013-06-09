updating
aMethodAdded: anEvent
	"Ok, a method was added. Does not mean modify."

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
	mCNodes isNil
		ifTrue: [ ^ self ].
	mCNodes
		do: [ :each | 
			each contentsNotNil
				ifTrue: [ 
					| s |
					s := each addChild: anEvent itemSelector.
					self allInstances do: [ :inst | inst addNode: s ] ] ]