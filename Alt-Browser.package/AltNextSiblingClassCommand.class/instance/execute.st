execution
execute
	| found aClass aClassIndex siblings nextClass |
	aClass := requestor selectedNode item itemClass.
	siblings := aClass superclass subclasses.
	aClassIndex := siblings indexOf: aClass.
	nextClass := siblings at: ((aClassIndex rem: siblings size) + 1).
	requestor class rootItems
		do: [ :each | 
			| res |
			(res := each findClass: nextClass) notNil
				ifTrue: [ found := res ] ].
	found ifNil: [  ^ self ].
	requestor selectPathForAbstractItem: found