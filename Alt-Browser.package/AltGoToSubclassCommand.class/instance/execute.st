execution
execute
	"To be done."
	
	| found aClass |
	aClass := requestor selectedNode item item subclasses first.
	AltBrowser rootItems
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	requestor selectPathForAbstractItem: found