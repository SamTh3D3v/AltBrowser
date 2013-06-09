user interface
defaultTreeMorph
	^ super defaultTreeMorph
		doubleClickSelector: #doubleClick;
		nodeStringGetter: #asText;
		getMenuSelector: #buildTreeMenu:;
		withHLines: false.