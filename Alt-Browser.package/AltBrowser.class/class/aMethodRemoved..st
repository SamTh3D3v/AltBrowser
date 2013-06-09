updating
aMethodRemoved: anEvent
	"Ok, a method was removed. Don't forget the method may be in multiple places."
	
	"Change this code; search for places where the method is visible (extensions and protocols)."
	
	"Bug: when removing a method, the method having already been removed from the system makes the search for the parent fail... :palm:"

	| mCNodes  |
	mCNodes := OrderedCollection new.
	self roots
		do: [ :root | 
			| res |
			res := root findAllClass: anEvent methodClass.
			res notNil
				ifTrue: [ 
					 mCNodes addAll: res ] ].	
	mCNodes
		do: [ :each |
			| pNode |
			pNode := each findMethodCategory: anEvent protocol in: anEvent methodClass.
			(pNode notNil and: [pNode contentsNotNil ])
				ifTrue: [ 
					| s |
					pNode contents remove: (s := pNode contents detect: [:e | e item == anEvent selector]).
					announcer announce: (AltNodeRemoved node: s) ] ]