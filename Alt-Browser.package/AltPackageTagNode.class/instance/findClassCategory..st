querying
findClassCategory: aCategory
	"Force a detection here for class category / RPackage similarity."

	self category = aCategory
		ifTrue: [ ^ self ].
	^ nil