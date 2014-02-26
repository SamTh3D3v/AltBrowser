updating
aMethodRemoved: anEvent
	"Pass through to childrens. We may have to rebuilt if the category isn't yet into our list. Try to delegate to the list of items; and rebuilt yourself if the protocol is not included."

	"Would be simpler if protocol creation were announced. They are not."

	anEvent methodClass == self itemClass
		ifTrue: [ 
			self contents do: [ :each | each aMethodRemoved: anEvent ].
			(self itemClass organization realCategories includes: anEvent protocol)
				ifFalse: [ AltBrowser aNodeToRebuilt: self ].
			^ true ].
	^ anEvent methodClass == self itemClass and: [ self contents first aMethodRemoved: anEvent ]