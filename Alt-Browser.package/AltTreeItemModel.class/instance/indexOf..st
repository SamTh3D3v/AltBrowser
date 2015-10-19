tree accessing
indexOf: anItemModel
	"Return the index of a model."

	| i |
	parent ifNotNil: [ ^ parent indexOf: anItemModel ].
	i := 0.
	(self
		anySatisfy: [ :each | 
			i := i + 1.
			each == anItemModel ])
		ifTrue: [ ^ i ].
	^ 0