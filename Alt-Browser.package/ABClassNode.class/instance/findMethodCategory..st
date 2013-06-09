as yet unclassified
findMethodCategory: aMethodCategory
	"Interesting bug: class and instance side may have the exact same method category."
	
	^ self item isMeta
		ifTrue: [ nil ]
		ifFalse: [ super findMethodCategory: aMethodCategory ]