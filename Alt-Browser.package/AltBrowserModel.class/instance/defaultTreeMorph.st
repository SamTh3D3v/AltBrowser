user interface
defaultTreeMorph
	^ super defaultTreeMorph
		doubleClickSelector: #doubleClick;
		nodeStringGetter: #asText;
		getMenuSelector: #menu:;
		withHLines: false.