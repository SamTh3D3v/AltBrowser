accessing
contents
	contents
		ifNil: [ contents := self rpackage extendedClasses collect: [ :each | AltClassExtensionNode with: each name parent: self ] ].
	^ contents