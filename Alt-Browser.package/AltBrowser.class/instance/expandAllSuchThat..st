user interface
expandAllSuchThat: aBlock
	self treeMorph allNodeMorphs do: [ :m | self treeMorph expand: m suchThat: aBlock ].
	self treeMorph innerWidgetChanged