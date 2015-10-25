updating
aMethodRemoved: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	"There should be some logic here to handle an empty 'as yet unclassified' category here, but it seems that in 2.0 it isn't removed automagically."

	(anEvent methodClass == self sourceClass
		and: [ anEvent protocol = self methodCategory ])
		ifTrue:
			[ AltBrowser aNodeToRebuilt: self.
			AltBrowserNeo aNodeToRebuilt: self.
			self methodCategory = 'as yet unclassified'
				ifTrue:
					[ (self sourceClass organization
						protocolNamed: self methodCategory) isEmpty
						ifTrue: [ self sourceClass removeProtocol: self methodCategory ] ].
			^ true ].
	^ false