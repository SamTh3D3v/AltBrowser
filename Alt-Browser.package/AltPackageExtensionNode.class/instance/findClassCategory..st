querying
findClassCategory: aCategory
	"Force a detection here for class category / RPackage similarity."

	self packageName = aCategory
		ifTrue: [ ^ self ].
	^ nil