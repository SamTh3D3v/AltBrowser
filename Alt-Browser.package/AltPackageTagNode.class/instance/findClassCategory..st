querying
findClassCategory: aCategory
	"Force a detection here for class category / RPackage similarity."

	code name = aCategory
		ifTrue: [ ^ self ].
	^ nil