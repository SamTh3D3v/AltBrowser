updating
aMethodAdded: anEvent
	"Pass through to childrens. We may have to rebuilt if the category isn't yet into our list. Try to delegate to the list of items; and rebuilt yourself if the protocol is not included."

	"Would be simpler if protocol creation were announced. They are not."

	contents notNil
		ifTrue: [ 
			anEvent methodClass == self itemClass
				ifTrue: [ 
					self contents do: [ :each | each aMethodAdded: anEvent ].
					((self contents select: [ :e | (e isKindOf: AltMethodCategoryNode) and: [ e methodCategory = anEvent protocol ] ])
						size < 1 or: [ anEvent protocol = 'no messages' ])
						ifTrue: [ AltBrowser aNodeToRebuilt: self ].
					^ true ].
			^ self contents first aMethodAdded: anEvent ].
	^ false