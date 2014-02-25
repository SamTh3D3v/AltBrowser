accessing
contents
	"Extract the contents from the tag. There are only classes in there."

	contents
		ifNil: [ 
			contents := (self class orderClasses: (self rpackage classesForClassTag: self item))
				collect: [ :each | AltClassNode with: each parent: self ] ].
	^ contents