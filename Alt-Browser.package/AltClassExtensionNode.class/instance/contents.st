accessing
contents
	contents
		ifNil: [ 
			contents := ((self parentNode rpackage extensionMethodsForClass: self item) collect: [ :e | e selector ]) asSortedCollection
				collect: [ :each | AltMethodNode with: each parent: self ] ].
	^ contents