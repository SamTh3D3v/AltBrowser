execution
execute
	"To be done."
	
	| found aClass nPath aNode tmPath |
	aClass := requestor selectedItem item item subclasses first.
	AltBrowser roots
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
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