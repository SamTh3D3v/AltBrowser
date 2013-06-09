user interface
defaultTreeMorph
	^ super defaultTreeMorph
		doubleClickSelector: #doubleClick;
		nodeStringGetter: #asText;
		getMenuSelector: #buildTreeMenu:;
		dragEnabled: true;
		dropEnabled: true;
		withHLines: false.