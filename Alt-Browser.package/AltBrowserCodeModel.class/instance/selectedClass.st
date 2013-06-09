accessing
selectedClass
	"Hope this is the one really needed."

	^ browser selectedNode isNil
		ifTrue: [ nil ]
		ifFalse: [ browser selectedNode sourceClass ]