enumerating
doMethod: aRecord
	| ns |
	ns := (super doItem: aRecord) reject: [:n | n isNil].
	^ns isEmpty
		ifFalse: [aRecord copy setChildren: ns]
		ifTrue: [nil]