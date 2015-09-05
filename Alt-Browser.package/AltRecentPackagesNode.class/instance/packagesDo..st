querying
packagesDo: aBlock
	self contents do: [ :each | each packagesDo: aBlock ]