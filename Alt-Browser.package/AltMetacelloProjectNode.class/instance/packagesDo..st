querying
packagesDo: aBlock
	self contents do: [ :e | e packagesDo: aBlock ]