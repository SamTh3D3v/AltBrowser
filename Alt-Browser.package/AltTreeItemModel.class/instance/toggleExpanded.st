user interface
toggleExpanded
	self isExpanded
		ifTrue:
			[ | sItem ann |
			sItem := nil.
			self
				anySatisfy:
					[ :i | 
					i selected
						ifTrue: [ sItem := i.
							true ]
						ifFalse: [ false ] ].
			sItem logCr.
			sItem
				ifNotNil:
					[ ann := AltSelectionChanged new.
					ann oldItems add: sItem.
					ann oldIndexes add: (self root indexOf: sItem).
					ann newItems add: self.
					ann newIndexes add: (self root indexOf: self).
					self root announcer announce: ann ] ].
	self isExpanded: self isExpanded not.
	self changed