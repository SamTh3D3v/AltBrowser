querying
findPackageCategory: aName
	"Return the node if the item matches."

	self categoryName = aName
		ifTrue: [ ^ self ].
	self contents do: [ :each | (each findPackageCategory: aName) ifNotNil: [ :res | ^ res ] ].
	^ nil