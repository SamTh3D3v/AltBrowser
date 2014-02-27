execution
execute
	"Find the superclass and jump to it."

	| found aClass   |
	aClass := requestor selectedNode item superclass.
	AltBrowser rootItems contents
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	found ifNil: [ ^ self ].
	requestor selectPathForAbstractItem: found