testing
isEnabled
	requestor selectedNode sourceClass
		allSuperclassesDo: [ :each | 
			(each includesSelector: requestor selectedNode item selector)
				ifTrue: [ ^ true ] ].
	^ false