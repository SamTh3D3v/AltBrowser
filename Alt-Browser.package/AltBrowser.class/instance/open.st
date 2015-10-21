user interface
open
	"Open the window, as simple as that."

	| pane group groupText |
	pane := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeTableLayout;
		cellInset: 0;
		cellPositioning: #leftCenter;
		yourself.	"non pane color tracking"
	group := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeProportionalLayout;
		yourself.	"non pane color tracking"
	groupText := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeTableLayout;
		cellInset: 0;
		cellPositioning: #leftCenter;
		yourself.	"non pane color tracking"
	window := self theme newWindowIn: World for: self title: self title.
	window addMorph: pane frame: (0 @ 0 corner: 1 @ 1).
	treeMorph := self defaultTreeMorph.
	textMorph := self defaultTextMorph.
	groupText addMorph: textMorph.
	treeMorph buildContents.
	treeMorph on: #keyStroke send: #startSearch:for: to: AltKeyboardSearchInTree.
	pane addMorph: group.
	group addMorph: treeMorph fullFrame: ((LayoutFrame fractions: (0 @ 0.0 corner: 0.3 @ 1)) leftOffset: 1; rightOffset: -1; yourself).
	group addMorph: groupText fullFrame: ((LayoutFrame fractions: (0.3 @ 0.0 corner: 1 @ 1)) leftOffset: 1; rightOffset: -1; yourself).
	group
		addMorph:
			(ProportionalSplitterMorph new
				layoutFrame: ((LayoutFrame fractions: (0.3 @ 0.0 corner: 0.3 @ 1)) leftOffset: -1; rightOffset: 1; yourself);
				addLeftOrTop: treeMorph;
				addRightOrBottom: groupText).
	window minimumExtent: 500 @ 500.
	window open.
	treeMorph takeKeyboardFocus.
	self registerToAnnouncements
