testing
isEnabled
	^ (requestor selectedNode sourceClass inheritsFrom: TestCase)
		and: [ requestor selectedNode item selector beginsWith: 'test' ]