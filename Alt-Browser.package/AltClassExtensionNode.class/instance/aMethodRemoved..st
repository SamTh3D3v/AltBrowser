updating
aMethodRemoved: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	"We can here ensure that empty extensions protocols are removed."

	(anEvent methodClass == self sourceClass and: [ anEvent protocol asLowercase beginsWith: self methodCategory ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			(anEvent methodClass organization extensionProtocols
				select: [ :e | (e name asLowercase beginsWith: self methodCategory) and: [ e isEmpty ] ])
				do: [ :e | anEvent methodClass organization removeCategory: e name ] ].
	^ false