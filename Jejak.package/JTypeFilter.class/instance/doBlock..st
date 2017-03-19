enumerating
doBlock: aRecord
	| ns |
	ns := (super doBlock: aRecord) reject: [:n | n isNil].
	^ns isEmpty
		ifFalse: [aRecord copy setChildren: ns]
		ifTrue: [nil]