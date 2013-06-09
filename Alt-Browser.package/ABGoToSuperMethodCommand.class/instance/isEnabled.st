testing
isEnabled
	requestor selectedItem sourceClass
		allSuperclassesDo: [ :each | 
			(each includesSelector: requestor selectedItem item)
				ifTrue: [ ^ true ] ].
	^ false