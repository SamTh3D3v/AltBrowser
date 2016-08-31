user interface
open
	"Open the window, as simple as that."

	| pane group groupText |
	pane := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeTableLayout;
		cellInset: 3 @ 3;
		cellPositioning: #leftCenter;
		yourself.	"non pane color tracking"
	group := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeProportionalLayout;
		yourself.	"non pane color tracking"
	groupText := Morph new
		fillStyle: Color transparent;
		changeTableLayout;
		cellInset: 0;
		cellPositioning: #leftCenter;
		yourself.	"non pane color tracking"
	window := Smalltalk ui theme
		newWindowIn: World
		for: self
		title: self title.
	window addMorph: pane frame: (0 @ 0 corner: 1 @ 1).
	treeMorph := self defaultTreeMorph.
	textMorph := self defaultTextMorph.
	groupText addMorph: textMorph.
	treeMorph
		on: #keyStroke
		send: #startSearch:for:
		to: AltKeyboardSearchInTree.
	pane addMorph: group.
	group
		addMorph: treeMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0.0 @ 0.0 corner: 0.3 @ 1.0)
				topLeftOffsets: 1 @ 0
				bottomRightOffsets: -1 @ 0).
	group
		addMorph: groupText
		fullFrame:
			(AltLayoutFrame
				fractions: (0.3 @ 0.0 corner: 1 @ 1)
				topLeftOffsets: 1 @ 0
				bottomRightOffsets: -1 @ 0).
	group
		addMorph:
			(ProportionalSplitterMorph new
				layoutFrame:
					(AltLayoutFrame
						fractions: (0.3 @ 0.0 corner: 0.3 @ 1.0)
						topLeftOffsets: -1 @ 0
						bottomRightOffsets: 1 @ 0);
				addLeftOrTop: treeMorph;
				addRightOrBottom: groupText).
	window minimumExtent: 500 @ 500.
	window announcer when: WindowClosed send: #release to: self.	
	window open.
	self
		updateTreeKeymap;
		updateTextKeymap.
	treeMorph takeKeyboardFocus.
	self registerToAnnouncements