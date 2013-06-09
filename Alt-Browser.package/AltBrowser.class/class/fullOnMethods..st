instance creation
fullOnMethods: aListOfCM
	"Given a list of compiled methods, open, and preselect all of them."

	| s n |
	n := self open.
	aListOfCM
		do: [ :aCompiledMethod | 
			self roots
				detect: [ :each | (s := each findMethod: aCompiledMethod selector in: aCompiledMethod class) notNil ].
			n selectPathForAbstractItem: s ]