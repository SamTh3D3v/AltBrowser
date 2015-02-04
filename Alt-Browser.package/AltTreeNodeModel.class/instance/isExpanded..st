protocol
isExpanded: aBoolean
	"When not expanded, destroy its contents. Too much caching hurts."

	"Add some handling to cope with defective deselection propagation when dis-expanding a node which has a selected child."

	aBoolean
		ifFalse: [ 
			contents := nil.
			model selectedItem
				ifNotNil: [ :s | 
					(s isAnAncestor: self)
						ifTrue: [ model selectPathForAbstractItem: item ] ] ]