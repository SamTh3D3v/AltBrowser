updating
aMethodRecategorized: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	(anEvent methodClass == self sourceClass
		and:
			[ anEvent newProtocol = self methodCategory
				or: [ anEvent oldProtocol = self methodCategory ] ])
		ifTrue:
			[ AltBrowser aNodeToRebuilt: self.
			AltBrowserNeo aNodeToRebuilt: self.
			self methodCategory = 'as yet unclassified'
				ifTrue:
					[ (self sourceClass organization
						protocolNamed: self methodCategory)
						ifNotNil:
							[ :protocol | 
							protocol isEmpty
								ifTrue: [ self sourceClass removeProtocol: self methodCategory ] ] ].
			^ true ].
	^ false