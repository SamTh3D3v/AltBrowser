updating
aMethodAdded: anEvent
	"Ok, a method was added. Trigger some reorganization if it is a specific method of a configuration."

	| altEvent |
	altEvent := AltMethodAdded
		method: anEvent method
		selector: anEvent selector
		protocol: anEvent protocol
		class: anEvent methodClass.
	altEvent rpackage: (RPackageOrganizer default packageForProtocol: anEvent protocol inClass: anEvent methodClass).
	self root aMethodAdded: altEvent.
	(anEvent selector == #catalogKeywords and: [ anEvent methodClass name beginsWith: 'ConfigurationOf' ])
		ifTrue: [ 
			| cat keywords |
			cat := anEvent methodClass theNonMetaClass name allButFirst: 'ConfigurationOf' size.
			keywords := [ anEvent methodClass theNonMetaClass perform: anEvent selector ]
				on: Error
				do: [ ^ self ].	"Probably safer to do an AST parse and recover the correct node."
			(self root findKeywordsCategory: keywords)
				ifNotNil: [ :aPackageCategory | 
					(self root findPackageCategory: cat asSymbol)
						ifNotNil: [ :previous | 
							(previous contents isEmpty not or: [ aPackageCategory == previous ])
								ifTrue: [ ^ self ].
							previous parent removeRPackage: previous item.
							self aNodeToRebuilt: previous parent ].
					aPackageCategory addRPackage: cat asSymbol -> OrderedCollection new.
					self aNodeToRebuilt: aPackageCategory ] ]