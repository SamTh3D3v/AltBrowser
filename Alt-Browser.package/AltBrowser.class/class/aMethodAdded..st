updating
aMethodAdded: anEvent
	"Ok, a method was added. Trigger some reorganization if it is a specific method of a configuration."

	| altEvent |
	altEvent := AltMethodAdded method: anEvent method.
	altEvent rpackage: (RPackageOrganizer default packageForProtocol: anEvent protocol inClass: anEvent methodClass).
	self root aMethodAdded: altEvent.
	anEvent selector == #catalogKeywords
		ifTrue: [ 
			| cat keywords |
			keywords := [ anEvent methodClass theNonMetaClass perform: anEvent selector ]
				on: Error
				do: [ ^ self ].	"Probably safer to do an AST parse and recover the correct node."
			cat := (keywords detect: [ :k | k beginsWith: 'Prefix-' ] ifNone: [  ])
				ifNotNil: [ :k | k allButFirst: 'Prefix-' ]
				ifNil: [ ^ self ].
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