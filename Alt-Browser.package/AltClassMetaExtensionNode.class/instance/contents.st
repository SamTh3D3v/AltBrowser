accessing
contents
	contents
		ifNil: [ 
			contents := ((self parent rpackage extensionMethodsForClass: self itemClass) collect: [ :e | e selector ])
				asSortedCollection collect: [ :each | AltMethodNode with: each parent: self ] ].
	^ contents