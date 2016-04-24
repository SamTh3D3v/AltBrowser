selection
updateSelection
	"Update from the model if needed."

	| modelSelection |
	modelSelection := self selectedItem.
	modelSelection isNil
		ifTrue: [ textMorph ifNotNil: [ :t | t classOrMetaClass: nil ] ]
		ifFalse: [ textMorph
				ifNotNil: [ :t | t classOrMetaClass: self selectedObject class ] ]