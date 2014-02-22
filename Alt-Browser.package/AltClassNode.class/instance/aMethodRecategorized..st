updating
aMethodRecategorized: anEvent
	"Pass through to childrens. We may have to rebuilt if the category isn't yet into our list. Try to delegate to the list of items; and rebuilt yourself if one of the two protocol is not included."

	"Would be simpler if protocol creation were announced. They are not."

	anEvent methodClass == item
		ifTrue: [ 
			self contents do: [ :each | each aMethodRecategorized: anEvent ].
			(self contents select: [ :e | e item = anEvent oldProtocol or: [ e item = anEvent newProtocol ] ]) size < 2
				ifTrue: [ 
					AltBrowser aNodeToRebuilt: self.
					^ true ].
			((self item organization categories includes: anEvent oldProtocol)
				and: [ self item organization categories includes: anEvent newProtocol ])
				ifFalse: [ 
					AltBrowser aNodeToRebuilt: self.
					^ true ].
			^ true ].
	^ anEvent methodClass == item class and: [ self contents first aMethodRecategorized: anEvent ]