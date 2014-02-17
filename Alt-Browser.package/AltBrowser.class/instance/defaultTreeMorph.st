user interface
defaultTreeMorph
	^ super defaultTreeMorph
		doubleClickSelector: #doubleClick;
		nodeStringGetter: #asString;
		getMenuSelector: #buildTreeMenu:;
		dragEnabled: true;
		dropEnabled: true;
		withHLines: false;
		yourself