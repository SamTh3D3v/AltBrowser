tree accessing
copyFrom: startIndex to: stopIndex
	"Return a subset of that collection, not a subtree."

	| found count |
	count := 0.
	found := OrderedCollection new: stopIndex - startIndex + 1.
	self
		anySatisfy:
			[ :e | 
			count := count + 1.
			count >= startIndex
				ifTrue: [ found add: e ].
			count >= stopIndex ].
	^ found