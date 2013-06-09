execution
execute
	"Find a class, then determine the path to reach it, and open this path. Select only one node, and if there is more than one match, use the last match (multiple matches means in current RPackage an additional, incorrect, overall package which is usually before the real, most specific package)."
	
	"In fact, this is costly (scan of the complete tree) even if it is fast enough, since sometimes the over package is before (Alt), sometimes it is after (Rpackage). It may be irrelevant with evolutions in RPackage."

	| aClass found aNode nPath tmPath |
	aClass := SearchFacade classSearch chooseFromOwner: requestor window window.
	aClass isNil
		ifTrue: [ ^ self ].
	AltBrowser rootItems contents
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	found isNil
		ifTrue: [ ^ aClass explore ].
	nPath := OrderedCollection new.
	aNode := requestor forceFindNodeForItem: found.
	self assert: (aNode notNil).
	requestor selectPathForItem: aNode