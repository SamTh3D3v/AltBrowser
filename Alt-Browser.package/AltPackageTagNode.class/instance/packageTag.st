accessing
packageTag
	^ self rpackage classTagNamed: (self rpackage toTagName: self category) ifAbsent: [  ]