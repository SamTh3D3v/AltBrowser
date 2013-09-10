instance creation
fullOnMethods: aListOfCM
	"Given a list of compiled methods, open, and preselect all of them."

	| s n e |
	e := RBSelectorEnvironment new.
	aListOfCM do: [ :each | e addClass: each methodClass selector: each selector ].
	n := self fullOnEnvironment: e.
	(aListOfCM collect: [ :each | each compiledMethod ])
		do: [ :aCompiledMethod | 
			self rootItems
				detect: [ :each | (s := each findMethod: aCompiledMethod selector in: aCompiledMethod methodClass) notNil ].
			n selectPathForAbstractItem: s ]