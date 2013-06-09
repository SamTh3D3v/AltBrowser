private
childrenItems
	^ ((self parentNode item extensionMethodsForClass: self item) collect: [ :e | e selector ])
		asSortedCollection