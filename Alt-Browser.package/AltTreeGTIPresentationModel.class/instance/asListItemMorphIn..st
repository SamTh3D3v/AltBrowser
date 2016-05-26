user interface
asListItemMorphIn: anAltListViewportMorph
	^ AltTreeGTIPresentationMorph new
		item: self in: anAltListViewportMorph;
		yourself