aspects
recordVisitorMenu: aMenu
	"A menu which should depend on existing record visitors."

	JRecordVisiteur allSubclasses
		do: [ :e | 
			aMenu
				add: e menuLabel
				target: self
				selector: #apply:
				argumentList: {(e new)} ].
	aMenu addLine.
	aMenu add: 'inspect' target: self selector: #inspectRecord.
	^ aMenu