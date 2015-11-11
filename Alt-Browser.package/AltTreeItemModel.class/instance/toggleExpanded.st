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
			sItem
				ifNotNil:
					[ ann := AltSelectionChanged new.
					ann oldItems add: sItem.
					ann oldIndexes add: (self root indexOf: sItem).
					ann newItems add: self.
					ann newIndexes add: (self root indexOf: self).
					self root doAnnounce: ann ] ].
	self isExpanded: self isExpanded not.
	self changed