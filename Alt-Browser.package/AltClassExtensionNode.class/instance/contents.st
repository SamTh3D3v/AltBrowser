accessing
contents
	contents
		ifNil: [ 
			contents := (self parent rpackage extensionSelectorsForClass: self itemClass classSide) notEmpty
				ifTrue: [ {(AltClassMetaExtensionNode with: self itemClass name parent: self)} ]
				ifFalse: [ #() ].
			contents := contents
				,
					(((self parent rpackage extensionMethodsForClass: self itemClass) collect: [ :e | e selector ]) asSortedCollection
						collect: [ :each | AltMethodNode with: each parent: self ]) ].
	^ contents