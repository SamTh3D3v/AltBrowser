querying
findKeywordsCategory: keywords
	"Return the node if the item matches."

	(keywords includes: self categoryName)
		ifTrue: [ 
			self contents do: [ :each | (each findKeywordsCategory: keywords) ifNotNil: [ :res | ^ res ] ].
			^ self ].
	^ nil