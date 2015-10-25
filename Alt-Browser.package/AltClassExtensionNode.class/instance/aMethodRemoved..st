updating
aMethodRemoved: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	"We can here ensure that empty extensions protocols are removed."

	((anEvent methodClass == self itemClass
		or: [ anEvent methodClass == self itemClass classSide ])
		and:
			[ (anEvent protocol asLowercase beginsWith: self methodCategory)
				and: [ self contents notEmpty ] ])
		ifTrue:
			[ (self contents first isKindOf: AltClassMetaExtensionNode)
				ifTrue: [ self contents first aMethodRemoved: anEvent ].
			AltBrowser aNodeToRebuilt: self.
			AltBrowserNeo aNodeToRebuilt: self.
			(anEvent methodClass organization extensionProtocols
				select:
					[ :e | 
					(e name asLowercase beginsWith: self methodCategory)
						and: [ e isEmpty ] ])
				do:
					[ :e | anEvent methodClass organization removeCategory: e name ] ].
	^ false