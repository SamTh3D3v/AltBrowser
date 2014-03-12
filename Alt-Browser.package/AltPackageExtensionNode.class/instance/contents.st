accessing
contents
	contents
		ifNil: [ 
			contents := self rpackage extendedClasses asSet
				collect: [ :each | 
					each isMeta
						ifTrue: [ AltClassExtensionNode with: each theNonMetaClass name parent: self ]
						ifFalse: [ AltClassExtensionNode with: each name parent: self ] ] ].
	^ contents