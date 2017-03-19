testing
atEnd
	^ self position > 0
		and:
			[ (self stack isEmpty
				or: [ self stack allSatisfy: [ :each | each atEnd ] ])
				and: [ item notNil and: [ item contents isEmpty ] ] ]