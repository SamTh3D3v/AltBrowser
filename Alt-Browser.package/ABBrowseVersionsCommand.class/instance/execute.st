execution
execute
	| class selector |
	class := requestor selectedNode sourceClass.
	selector := requestor selectedNode item item.
	Smalltalk tools versionBrowser
		browseVersionsOf: (class compiledMethodAt: selector)
		class: class theNonMetaClass
		meta: class isMeta
		category: requestor selectedNode item parentNode methodCategory
		selector: selector