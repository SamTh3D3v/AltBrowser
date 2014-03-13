accessing
contents
	contents
		ifNil: [ 
			contents := (self class sortClasses: (self rpackage extendedClasses asSet collect: [ :each | each theNonMetaClass ]))
				collect: [ :each | AltClassExtensionNode with: each name parent: self ] ].
	^ contents