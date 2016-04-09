private
textMorph: aTextMorph characterAt: anIndex
	"This should be part of the API of a text morph, really."
	
	| text |
	text := aTextMorph text.
	anIndex < 1 ifTrue: [ ^ nil ].
	anIndex > text size ifTrue: [ ^ nil ].
	^ text at: anIndex
	