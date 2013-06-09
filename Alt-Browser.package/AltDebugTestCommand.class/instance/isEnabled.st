testing
isEnabled
	^ (requestor selectedNode sourceClass inheritsFrom: TestCase) and: [ requestor selectedNode item item beginsWith: 'test' ]