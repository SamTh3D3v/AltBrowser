updating
aMethodRemoved: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."
	
	"There should be some logic here to handle an empty 'as yet unclassified' category here, but it seems that in 2.0 it isn't removed automagically."

	(anEvent methodClass == self sourceClass and: [ anEvent protocol = item ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			self item = 'as yet unclassified'
				ifTrue: [ 
					(self sourceClass organization protocolNamed: self item) isEmpty
						ifTrue: [ self sourceClass removeProtocol: self item ] ].
			^ true ].
	^ false