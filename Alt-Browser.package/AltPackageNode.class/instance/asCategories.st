converting
asCategories
	"Convert this node in a categories setting"

	self parent ifNil: [ ^ nil ].
	(self packageName beginsWith: self parent categoryName)
		ifTrue: [ ^ nil ].
	^ self packageName asString