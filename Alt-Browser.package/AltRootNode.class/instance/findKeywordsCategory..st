querying
findKeywordsCategory: keywords
	"Return the node if the item matches."

	self contents do: [ :each | (each findKeywordsCategory: keywords) ifNotNil: [ :res | ^ res ] ].
	^ nil