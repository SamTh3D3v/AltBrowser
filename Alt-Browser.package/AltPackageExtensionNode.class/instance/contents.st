accessing
contents
	contents
		ifNil: [ contents := self rpackage extendedClasses collect: [ :each | AltClassExtensionNode with: each parent: self ] ].
	^ contents