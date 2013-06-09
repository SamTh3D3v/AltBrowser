updating
aMethodRemoved: anEvent
	"Pass through to childrens. We may have to rebuilt if the category isn't yet into our list. Try to delegate to the list of items; and rebuilt yourself if the protocol is not included."

	"Would be simpler if protocol creation were announced. They are not."

	anEvent methodClass == item
		ifTrue: [ 
			self contents do: [ :each | each aMethodRemoved: anEvent ].
			(self contents select: [ :e | e item = anEvent protocol ]) size < 1
				ifTrue: [ AltBrowser aNodeToRebuilt: self ].
			^ true ].
	^ false