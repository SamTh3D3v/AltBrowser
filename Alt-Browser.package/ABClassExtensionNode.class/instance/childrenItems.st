as yet unclassified
childrenItems
	^ ((self parentNode item packageInfo extensionMethodsForClass: self item) collect: [ :e | e selector ])
		asSortedCollection