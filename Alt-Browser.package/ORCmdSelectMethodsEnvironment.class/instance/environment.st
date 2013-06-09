accessing
environment
	| condition |
	condition := self 
		prompt: 'Select methods:' 
		initialAnswer: '[ :each | false ]'.
	^ (super environment selectMethods: (self class evaluatorClass evaluate: condition))
		label: 'Methods matching ' , condition.