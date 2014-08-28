accessing
contents
	"Extract the contents from the tag. There are only classes in there."

	contents
		ifNil: [ 
			contents := (self class sortClasses: (self rpackage classesForClassTag: self category))
				collect: [ :each | AltClassNode with: each name parent: self ] ].
	^ contents