execution
execute
	"To be done."
	
	| found aClass |
	aClass := requestor selectedNode item subclasses first.
	AltBrowser rootItems
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	found isNil ifTrue: [  ^ nil ].
	requestor selectPathForAbstractItem: found