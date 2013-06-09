*Alt-Browser-override
startDrag: evt 
	| ddm itemMorph passenger |
	self dragEnabled
		ifTrue: [itemMorph := self allNodeMorphs
						detect: [:any | any highlightedForMouseDown]
						ifNone: []].
	(itemMorph isNil
			or: [evt hand hasSubmorphs])
		ifTrue: [^ self].
	itemMorph highlightForMouseDown: false.
	
	itemMorph ~= self listManager selectedMorph
		ifTrue: [self listManager setSelectedMorph: itemMorph].
		
	passenger := self model dragPassengerFor: itemMorph inMorph: self.
	passenger
		ifNotNil: [ | ddRect |
			ddm := TransferMorph withPassenger: passenger from: self.
			ddRect := ddm draggedMorph bounds.
			ddm position: evt position.
			ddm
				dragTransferType: (self model dragTransferTypeForMorph: self).
			evt hand grabMorph: ddm].
	evt hand releaseMouseFocus: self