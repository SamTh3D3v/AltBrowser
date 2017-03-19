as yet unclassified
keyStroke: anEvent from: aTreeMorph
	| c |
	c := anEvent keyCharacter.
	c = $i
		ifTrue: [self inspectItem. ^ true].
	c = $I
		ifTrue: [self exploreItem. ^ true].
	^ false
