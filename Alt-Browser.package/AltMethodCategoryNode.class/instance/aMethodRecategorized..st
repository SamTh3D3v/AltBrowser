updating
aMethodRecategorized: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	(anEvent methodClass == self sourceClass and: [ anEvent newProtocol = item or: [ anEvent oldProtocol = item ] ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			self item = 'as yet unclassified'
				ifTrue: [ 
					(self sourceClass organization protocolNamed: self item) isEmpty
						ifTrue: [ self sourceClass removeProtocol: self item ] ].
			^ true ].
	^ false