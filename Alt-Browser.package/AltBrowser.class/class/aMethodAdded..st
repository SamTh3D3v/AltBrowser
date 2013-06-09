updating
aMethodAdded: anEvent
	"Ok, a method was added. Things to search for: extensions! If the method is an extension, update that part as well (and at the package extension level, since it may be necessary to add the class node as well). Use the findAllMethodParents: for that."

	"Problem : if there isn't any method yet, then the current method category will be replaced by the 'as yet unclassified' category, and the update won't work as expected."

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
			| pNode |
			pNode := each findMethodCategory: anEvent protocol in: anEvent methodClass.
			(each contents detect: [ :i | i item = 'no messages' ] ifNone: [ nil ]) isNil
				ifFalse: [ self aNodeToRebuilt: each ]
				ifTrue: [ self aNodeToRebuilt: pNode ] ]