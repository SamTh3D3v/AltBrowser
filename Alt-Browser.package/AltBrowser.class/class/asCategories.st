categories
asCategories
	^ (OrderedCollection
		streamContents: [ :stream | self rootItems do: [ :each | each asCategories ifNotNil: [ :cat | stream nextPut: cat ] ] ])
		asArray