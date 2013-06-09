execution
execute
	| class selector |
	class := requestor selectedItem sourceClass.
	selector := requestor selectedItem item item.
	Smalltalk tools versionBrowser
		browseVersionsOf: (class compiledMethodAt: selector)
		class: class theNonMetaClass
		meta: class isMeta
		category: requestor selectedItem item parentNode methodCategory
		selector: selector