testing
isEnabled
	requestor selectedItem sourceClass
		allSuperclassesDo: [ :each | 
			(each includesSelector: requestor selectedItem item item)
				ifTrue: [ ^ true ] ].
	^ false