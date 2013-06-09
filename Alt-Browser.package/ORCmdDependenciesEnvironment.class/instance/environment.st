accessing
environment
	"Build an environment with all the static dependencies."

	| result parent inside |
	result := RBClassEnvironment new.
	parent := super environment.
	inside := [ :class | 
		(parent definesClass: class)
			and: [ parent includesClass: class ] ].
	parent classesDo: [ :class |
		"(1) super classes"
		(class isMeta not 
			and: [ class superclass notNil
			and: [ (inside value: class superclass) not ] ])
				ifTrue: [ self add: class superclass to: result ] ].
	parent classesAndSelectorsDo: [ :class :selector |
		"(2) extended classes"
		(inside value: class)
			ifFalse: [ self add: class to: result ].
		"(3) referenced classes"
		(class compiledMethodAt: selector) literals allButLast do: [ :literal |
			(literal isVariableBinding and: [ literal value isBehavior and: [ (inside value: literal value) not ] ])
				ifTrue: [ self add: literal value to: result ] ] ].
	^ result label: 'External Dependencies of ' , parent label