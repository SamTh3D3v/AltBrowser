streaming
collection: anObject
	"If a collection is added, then prepare the stack to make sure next will work."

	"Do not use super; superclass may init itself differently."

	| aParent anItem |
	collection := anObject.
	position := 0.
	collection
		anySatisfy:
			[ :each | 
			anItem := each.
			position := position + 1.
			false ].	"Get both last  element and size in the fastest way."
	aParent := anItem parent.
	[ aParent notNil ]
		whileTrue:
			[ self stack addFirst: (ReadStream on: aParent contents reversed).
			aParent := aParent parent ].
	self stack addFirst: (ReadStream on: (Array with: collection))