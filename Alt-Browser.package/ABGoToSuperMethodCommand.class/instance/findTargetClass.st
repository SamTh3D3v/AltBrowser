execution
findTargetClass
	"Move to that place. We will check if this works for selection first."
	
	requestor selectedNode sourceClass
		allSuperclassesDo: [ :each | 
			(each includesSelector: requestor selectedNode item item)
				ifTrue: [ ^ each ] ].
	^ nil