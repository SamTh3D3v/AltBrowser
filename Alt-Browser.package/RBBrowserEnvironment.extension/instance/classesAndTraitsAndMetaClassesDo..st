*alt-browser
classesAndTraitsAndMetaClassesDo: aBlock
	self
		allClassesAndTraitsDo: [ :each | 
			(self includesClass: each)
				ifTrue: [ aBlock value: each ].
			(self includesClass: each theMetaClass)
				ifTrue: [ aBlock value: each theMetaClass ] ]