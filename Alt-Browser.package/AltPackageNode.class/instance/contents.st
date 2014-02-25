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
							| rootTag |
							stream nextPut: (AltPackageExtensionNode with: self packageName parent: self).
							rootTag := aRPackage classTags detect: [ :e | e name = self packageName ] ifNone: [  ].
							stream
								nextPutAll:
									(((aRPackage classTags reject: [ :a | a name = self packageName ]) sorted: [ :a :b | a name < b name ])
										collect: [ :a | AltPackageTagNode with: a categoryName asSymbol parent: self ]).
							rootTag
								ifNotNil: [ 
									stream
										nextPutAll:
											((self class orderClasses: rootTag classes asOrderedCollection) collect: [ :e | AltClassNode with: e parent: self ]) ] ] ] ].
	^ contents