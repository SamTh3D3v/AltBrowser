updating
changed
	"We have to tell the parent to change. By default, at top level, trigger a refresh."

	"I can update the selection."

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