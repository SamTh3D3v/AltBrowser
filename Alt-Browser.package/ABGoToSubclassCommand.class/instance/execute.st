execution
execute
	"To be done."
	
	| found aClass |
	aClass := requestor selectedItem item item subclasses first.
	AltBrowser roots
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	requestor selectPathForAbstractItem: found