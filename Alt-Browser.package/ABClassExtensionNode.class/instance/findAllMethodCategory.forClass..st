querying
findAllMethodCategory: aMethodCategory forClass: aClass
	"RPackage doesn't seems to have a way to get the relevant method category for extensions. Strange."
	
	^ (item == aClass and: [ parentNode item isYourClassExtension: aMethodCategory ])
		ifTrue: [ OrderedCollection with: self ]
		ifFalse: [ nil ]