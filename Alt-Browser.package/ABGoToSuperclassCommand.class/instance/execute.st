execution
execute
	"Find the superclass and jump to it."

	| found aClass nPath aNode tmPath |
	aClass := requestor selectedNode item item superclass.
	AltBrowser roots contents
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	requestor selectPathForAbstractItem: found