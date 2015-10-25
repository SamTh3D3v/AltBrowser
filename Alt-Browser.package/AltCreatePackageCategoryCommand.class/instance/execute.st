execution
execute
	"Ask for a category name and create it."

	| name cat |
	name := UIManager default request: 'New Category name?'.
	name ifNil: [ ^ self ].
	(requestor class findPackageCategory: name)
		ifNotNil: [ :item | 
			self inform: name , ' already exists'.
			^ item ].
	cat := name -> OrderedCollection new.
	requestor selectedNode notNil
		ifTrue: [ 
			requestor selectedNode item addRPackage: cat.
			requestor class aNodeToRebuilt: requestor selectedNode item ]
		ifFalse: [ 
			requestor class root addRPackage: cat.
			requestor class aNodeToRebuilt: requestor class root ].
	requestor class updateCategories.
	^ requestor class findPackageCategory: name