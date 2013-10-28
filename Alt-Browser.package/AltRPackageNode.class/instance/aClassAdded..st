updating
aClassAdded: anEvent
	"Propagate the event. Note if this belong to our package."

	| result |
	(anEvent classCategory beginsWith: item packageName)
		ifTrue: [ 
			result := self contents inject: false into: [ :bool :each | (each aClassAdded: anEvent) or: [ bool ] ].
			anEvent classCategory = item packageName
				ifTrue: [ 
					AltBrowser aNodeToRebuilt: self.
					^ true ].
			^ result ].
	^ false