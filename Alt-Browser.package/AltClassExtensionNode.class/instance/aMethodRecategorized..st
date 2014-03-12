updating
aMethodRecategorized: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	"On a recategorization which concerns us, eventually cleans the extension protocol if empty."

	(anEvent methodClass == self sourceClass
		and: [ 
			(anEvent newProtocol asLowercase beginsWith: self methodCategory)
				or: [ anEvent oldProtocol asLowercase beginsWith: self methodCategory ] ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			(anEvent methodClass organization extensionProtocols
				select: [ :e | (e name asLowercase beginsWith: self methodCategory) and: [ e isEmpty ] ])
				do: [ :e | anEvent methodClass organization removeCategory: e name ].
			^ true ]
		ifFalse: [ 
			(self contents first isKindOf: AltClassMetaExtensionNode)
				ifTrue: [ 
					(self contents first aMethodRecategorized: anEvent)
						ifTrue: [ 
							AltBrowser aNodeToRebuilt: self.
							^ true ] ] ].
	^ false