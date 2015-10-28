updating
aMethodRecategorized: anEvent
	"Pass through to childrens. We may have to rebuilt if the category isn't yet into our list. Try to delegate to the list of items; and rebuilt yourself if one of the two protocol is not included."

	"Would be simpler if protocol creation were announced. They are not."

	anEvent methodClass == self itemClass
		ifTrue:
			[ self contents do: [ :each | each aMethodRecategorized: anEvent ].
			(self contents
				select:
					[ :e | 
					(e isKindOf: AltMethodCategoryNode)
						and:
							[ e methodCategory = anEvent oldProtocol
								or: [ e methodCategory = anEvent newProtocol ] ] ]) size < 2
				ifTrue: [ AltBrowserNeo aNodeToRebuilt: self.
					^ true ].
			((self itemClass protocols includes: anEvent oldProtocol)
				and: [ self itemClass protocols includes: anEvent newProtocol ])
				ifFalse: [ AltBrowserNeo aNodeToRebuilt: self.
					^ true ].
			^ true ].
	^ false