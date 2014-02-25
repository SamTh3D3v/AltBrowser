querying
findClassCategory: aCategory
	"Force a detection here for class category / RPackage similarity."

	item name = aCategory
		ifTrue: [ ^ self ].
	^ nil