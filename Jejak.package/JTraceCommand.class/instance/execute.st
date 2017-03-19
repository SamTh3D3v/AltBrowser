execution
execute
	| method |
	method := requestor selectedNode item compiledMethod.
	(JInstrumentedMethods includesKey: (Array with: method methodClass with: method selector))
		ifTrue: [ 
			method methodClass
				addSelector: method selector
				withMethod: (JInstrumentedMethods at: (Array with: method methodClass with: method selector)) ]
		ifFalse: [ JVariableProbesWriter analyse: method selector in: method methodClass ]