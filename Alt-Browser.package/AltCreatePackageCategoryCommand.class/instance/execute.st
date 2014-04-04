execution
execute
	"Ask for a category name and create it."

	| name cat |
	name := UIManager default request: 'New Category name?'.
	name ifNil: [ ^ self ].
	(AltBrowser findPackageCategory: name)
		ifNotNil: [ :item | 
			self inform: name , ' already exists'.
			^ item ].
	cat := name -> OrderedCollection new.
	requestor selectedNode notNil
		ifTrue: [ 
			requestor selectedNode item addRPackage: cat.
			AltBrowser aNodeToRebuilt: requestor selectedNode item ]
		ifFalse: [ 
			AltBrowser root addRPackage: cat.
			AltBrowser aNodeToRebuilt: AltBrowser root ].
	AltBrowser updateCategories.
	^ AltBrowser findPackageCategory: name