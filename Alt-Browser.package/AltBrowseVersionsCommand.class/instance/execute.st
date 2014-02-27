execution
execute
	| class selector |
	class := requestor selectedNode sourceClass.
	selector := requestor selectedNode item selector.
	AltVersionBrowser
		browseVersionsOf: (class compiledMethodAt: selector)
		class: class theNonMetaClass
		meta: class isMeta
		category: requestor selectedNode item methodCategory
		selector: selector