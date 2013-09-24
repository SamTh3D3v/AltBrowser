instance creation
browseVersionsOf: method class: class meta: meta category: msgCategory selector: selector
	"Common errors (Not a git repository or not yet committed) will fallback on the default, change file based versions browsing by generating NotFound errors."

	^ [ 
	self
		browseVersionsOf: method
		class: class
		meta: meta
		category: msgCategory
		selector: selector
		lostMethodPointer: nil ]
		on: NotFound
		do: [ 
			VersionsBrowser
				browseVersionsOf: method
				class: class
				meta: meta
				category: msgCategory
				selector: selector
				lostMethodPointer: nil ]