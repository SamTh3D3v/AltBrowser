accessing
categories
	^ requestor parent categories collect: [ :each | each name ]