accessing
contents
	contents
		ifNil: [ 
			contents := self rpackage extendedClasses
				collect: [ :each | 
					each isMeta
						ifTrue: [ AltClassMetaExtensionNode with: each theNonMetaClass name parent: self ]
						ifFalse: [ AltClassExtensionNode with: each name parent: self ] ] ].
	^ contents