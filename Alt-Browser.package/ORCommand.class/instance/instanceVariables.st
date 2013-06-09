accessing-variables
instanceVariables
	| variables |
	variables := self currentNode theClass allInstVarNames
		asArray sort.
	^ (variables includes: self selection)
		ifTrue: [ Array with: self selection ]
		ifFalse: [
			"(target isKindOf: OBInstanceVariableNode)
				ifTrue: [ Array with: target name ]
				ifFalse: [" variables" ]" ]