updating
aMethodRecategorized: anEvent
	"Pass through to childrens. We may have to rebuilt if the category isn't yet into our list. Try to delegate to the list of items; if one of them rings true, then don't update; if none, then the protocol is new and we need to update the class display itself."

	"Would be simpler if protocol creation were announced. They are not."

	anEvent methodClass == item
		ifTrue: [ 
			self contents detect: [ :each | each aMethodRecategorized: anEvent ] ifNone: [ AltBrowser aNodeToRebuilt: self ].
			^ true ].
	^ false