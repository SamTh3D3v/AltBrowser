querying
findPackageSetForCategory: aCategoryName
	"Search among the packages associated to the set. But in the contents!"

	| pks |
	pks := self contents collect: [:e | e title].
	(pks includes: aCategoryName)
		ifTrue: [ ^ self ]
		ifFalse: [ ^ nil ]