execution
execute
	"Find a class, then determine the path to reach it, and open this path."

	| aClass aListOfNodes |
	aClass := SearchFacade classSearch chooseFromOwner: requestor window window.
	aClass isNil ifTrue: [ ^ self ].
	AltBrowser rootItems contents
		do: [ :each | 
			| res |
			(res := each findAllClass: aClass) isNil
				ifFalse: [ 
					aListOfNodes isNil
						ifTrue: [ aListOfNodes := res ]
						ifFalse: [ aListOfNodes addAll: res ] ] ].
	aListOfNodes isNil
		ifTrue: [ ^ aClass explore ].
	aListOfNodes
		do: [ :each | 
			| aNode nPath tmPath |
			nPath := OrderedCollection new.
			aNode := each.
			[ aNode notNil ]
				whileTrue: [ 
					nPath add: aNode.
					aNode := aNode parentNode ].
			tmPath := OrderedCollection with: (target roots detect: [ :r | r item == nPath last ]).
			nPath removeLast.
			nPath reverseDo: [ :n | tmPath add: (tmPath last forceFindItem: n) ].
			target widget selectPath: tmPath in: (target widget scroller submorphs at: 1 ifAbsent: [ ^ self ]) ]