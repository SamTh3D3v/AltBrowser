accessing
contents
	"A Package set is a single RPackage instance with tags now. There are only extensions in the package itself."

	| aRPackage |
	contents
		ifNil: [ 
			aRPackage := self rpackage.
			aRPackage classTags isEmpty
				ifTrue: [ 
					contents := {(AltPackageExtensionNode with: self packageName parent: self)}
						,
							((self class orderClasses: aRPackage definedClasses asOrderedCollection)
								collect: [ :e | AltClassNode with: e parent: self ]) ]
				ifFalse: [ 
					contents := OrderedCollection
						streamContents: [ :stream | 
							stream nextPut: (AltPackageExtensionNode with: self packageName parent: self).
							(aRPackage classTags sorted: [ :a :b | a name = self packageName or: [ a name < b name ] ])
								do: [ :tag | 
									tag name = self packageName
										ifTrue: [ 
											stream
												nextPutAll:
													((self class orderClasses: tag classes asOrderedCollection) collect: [ :e | AltClassNode with: e parent: self ]) ]
										ifFalse: [ stream nextPut: (AltPackageTagNode with: tag parent: self) ] ] ] ] ].
	^ contents