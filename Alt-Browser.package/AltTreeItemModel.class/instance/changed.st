updating
changed
	"We have to tell the parent to change. By default, at top level, trigger a refresh."

	"By default, a tree changed implies selection changes, so an AltTreeChanged may includes a selection change. My observers have to take that into account."

	parent
		ifNil:
			[ selectedItem
				ifNotNil:
					[ :s | 
					| i |
					i := self indexOf: s.
					i isZero
						ifTrue: [ selectedItem := nil.
							selectedIndex := 0 ]
						ifFalse: [ selectedIndex := i ] ].
			self doAnnounce: (AltTreeChanged on: self) ]
		ifNotNil: [ :p | p changed ]