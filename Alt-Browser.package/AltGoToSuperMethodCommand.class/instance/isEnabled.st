testing
isEnabled
	requestor selectedNode sourceClass
		allSuperclassesDo: [ :each | 
			(each includesSelector: requestor selectedNode item item)
				ifTrue: [ ^ true ] ].
	^ false