execution
execute
	"Find the superclass and jump to it."

	| found aClass nPath aNode tmPath |
	aClass := requestor selectedItem item item superclass.
	AltBrowser rootItems contents
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	found isNil
		ifTrue: [ ^ requestor selectedItem explore ].
	nPath := OrderedCollection new.
	aNode := found.
	[ aNode notNil ]
		whileTrue: [ 
			nPath add: aNode.
			aNode := aNode parentNode ].
	tmPath := OrderedCollection with: (target getRoots detect: [ :r | r item == nPath last ]).
	nPath removeLast.
	nPath reverseDo: [ :n | tmPath add: (tmPath last forceFindItem: n) ].
	target widget selectPath: tmPath in: (target widget scroller submorphs at: 1 ifAbsent: [ ^ self ])