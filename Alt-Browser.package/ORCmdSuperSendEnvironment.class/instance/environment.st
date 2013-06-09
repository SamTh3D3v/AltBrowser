accessing
environment
	| parent environment matcher |
	parent := super environment.
	environment := RBParseTreeEnvironment onEnvironment: parent.
	environment label: 'Super-Sends'; matcher: (matcher := RBParseTreeSearcher new).
	matcher matches: 'super `@message: ``@args' do: [ :node :answer | node ].
	parent classesAndSelectorsDo: [ :class :selector |
		(matcher executeTree: (class compiledMethodAt: selector) parseTree initialAnswer: nil) notNil
			ifTrue: [ environment addClass: class selector: selector ] ].
	^ environment