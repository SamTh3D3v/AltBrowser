updating
aClassReorganized: anEvent
	"Ok, a class was reorganised (a new protocol, for example). It seems I need to rebuilt all nodes on that class."

	| node r o |
	o := OrderedCollection new.
	node := self rootItems contents
		do: [ :e | 
			(r := e findAllClass: anEvent classReorganized) notNil
				ifTrue: [ o addAll: r ] ].
	o
		do: [ :each | 
			each rebuildContents.
			announcer announce: (AltNodeRebuilt node: each) ]