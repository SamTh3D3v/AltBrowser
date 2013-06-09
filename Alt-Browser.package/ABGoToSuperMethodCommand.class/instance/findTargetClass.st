execution
findTargetClass
	"Move to that place. We will check if this works for selection first."
	
	requestor selectedItem sourceClass
		allSuperclassesDo: [ :each | 
			(each includesSelector: requestor selectedItem item item)
				ifTrue: [ ^ each ] ].
	^ nil