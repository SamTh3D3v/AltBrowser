converting
asCategories
	"Convert this node in a categories setting"

	| c |
	c := OrderedCollection
		streamContents: [ :stream | 
			stream nextPut: self code key.
			self contents do: [ :each | each asCategories ifNotNil: [ :aCat | stream nextPut: aCat ] ] ].
	^ c size = 1
		ifTrue: [ c first ]
		ifFalse: [ c asArray ]