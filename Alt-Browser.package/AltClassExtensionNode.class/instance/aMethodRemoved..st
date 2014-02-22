updating
aMethodRemoved: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	(anEvent methodClass == self sourceClass and: [ anEvent protocol asLowercase = self methodCategory ])
		ifTrue: [ 
			(anEvent methodClass organization categories
				select: [ :e | (e name asLowercase beginsWith: self methodCategory) and: [ e isEmpty ] ])
				do: [ :e | anEvent methodClass organization removeCategory: e name ].
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ false