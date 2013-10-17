private
childrenItems
	"A Package set is a single RPackage instance with tags now. There are only extensions in the package itself."

	| o aRPackage |
	o := OrderedCollection new.
	aRPackage := self item packageSet packages first.
	self assert: aRPackage classTags notEmpty.	"It is an hypothesis..."
	aRPackage classTags
		do: [ :tag | 
			tag name = self item packageName
				ifTrue: [ o := ({aRPackage} , (self class orderClasses: tag classes asOrderedCollection) , o) asOrderedCollection ]
				ifFalse: [ o add: tag ] ].
	^ o