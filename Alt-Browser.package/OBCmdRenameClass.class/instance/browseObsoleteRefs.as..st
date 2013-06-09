execution
browseObsoleteRefs: aClassNode as: oldName 
	| binding |
	binding := aClassNode theNonMetaClass environment 
				associationAt: aClassNode theNonMetaClass name.
	self halt"(SystemNavigation default allCallsOn: binding) isEmpty 
		ifFalse: [OBReferencesBrowser
					browseRoot: aClassNode
					title: 'Obsolete references to']"