updating
aMethodRecategorized: anEvent
	"Ok, a method protocol has changed. Don't forget the method may be in multiple places (extensions) but this may be handled by other announcements ."

	"TOCHECK: if a protocol is removed or added because of this event, suppose that the system will send a ClassReorganized event as well."

	| mCNodes |
	mCNodes := OrderedCollection new.
	self roots
		do: [ :root | 
			| res |
			res := root findAllClass: anEvent methodClass.
			res notNil
				ifTrue: [ mCNodes addAll: res ] ].
	mCNodes
		do: [ :each | 
			| pNode pNode2 |
			pNode := each findMethodCategory: anEvent oldProtocol in: anEvent methodClass.
			self aNodeToRebuilt: pNode.
			pNode2 := each findMethodCategory: anEvent newProtocol in: anEvent methodClass.
			pNode2 ~= pNode
				ifTrue: [ self aNodeToRebuilt: pNode ] ]