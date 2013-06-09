private
globalReference
	| binding |
	target hasSelector
		ifFalse: [ ^ nil ].
	((binding := Smalltalk classNamed: target selector) notNil and: [ binding value notNil ])
		ifTrue: [ ^ binding value asNode ].
	^ nil
