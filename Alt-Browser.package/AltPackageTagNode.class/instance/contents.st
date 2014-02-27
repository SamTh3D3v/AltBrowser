accessing
contents
	"Extract the contents from the tag. There are only classes in there."

	contents
		ifNil: [ 
			contents := (self class orderClasses: (self rpackage classesForClassTag: self code))
				collect: [ :each | AltClassNode with: each parent: self ] ].
	^ contents