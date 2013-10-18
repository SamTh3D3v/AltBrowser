private
childrenItems
	"A Package set is a single RPackage instance with tags now. There are only extensions in the package itself."

	| o aRPackage |
	o := OrderedCollection new.
	aRPackage := self item packageSet packages first.
	aRPackage classTags isEmpty
		ifTrue: [ ^ ({aRPackage} , (self class orderClasses: aRPackage classes asOrderedCollection) )].
	o add: aRPackage.	"Extensions, even if empty."
	aRPackage classTags
		do: [ :tag | 
			tag name = self item packageName
				ifTrue: [ o := ((self class orderClasses: tag classes asOrderedCollection) , o) asOrderedCollection ]
				ifFalse: [ o add: tag ] ].
	^ o