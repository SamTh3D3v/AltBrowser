accessing
packageTag
	^ self rpackage classTagNamed: (self rpackage toTagName: self item) ifAbsent: [  ]