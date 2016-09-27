execution
execute
	"Run the test and notify."

	| testSelector testClass testMethod color |
	testSelector := requestor selectedNode item selector.
	testClass := requestor selectedNode sourceClass.
	testClass debug: testSelector.
	color := (testClass methodPassed: testSelector)
		ifTrue: [ Color green ]
		ifFalse: [ (testClass methodFailed: testSelector)
				ifTrue: [ Color yellow ]
				ifFalse: [ (testClass methodRaisedError: testSelector)
						ifTrue: [ Color red ]
						ifFalse: [ Color gray ] ] ].
	GrowlMorph
		openWithLabel: 'Test ended'
		contents: 'Method: ' , testClass asString , '>>#' , testSelector asString
		backgroundColor: color
		labelColor: Color black