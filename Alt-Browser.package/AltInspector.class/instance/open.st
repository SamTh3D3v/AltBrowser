user interface
open
	"Open the window, as simple as that."

	| pane group |
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
	window := Smalltalk ui theme
		newWindowIn: World
		for: self
		title: self title.
	window addMorph: pane frame: (0 @ 0 corner: 1 @ 1).
	treeMorph := self defaultTreeMorph.
	textMorph := self defaultTextMorph.
	textMorph styler workspace: self.
	treeMorph
		on: #keyStroke
		send: #startSearch:for:
		to: AltKeyboardSearchInTree.
	pane addMorph: group.
	group
		addMorph: treeMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0.0 @ 0.0 corner: 1.0 @ 0.8)
				topLeftOffsets: 1 @ 0
				bottomRightOffsets: -1 @ -1).
	group
		addMorph: textMorph
		fullFrame:
			(AltLayoutFrame
				fractions: (0.0 @ 0.8 corner: 1.0 @ 1.0)
				topLeftOffsets: 1 @ 1
				bottomRightOffsets: -1 @ 0).
	group
		addMorph:
			(ProportionalSplitterMorph new
				beSplitsTopAndBottom;
				layoutFrame:
					(AltLayoutFrame
						fractions: (0.0 @ 0.8 corner: 1.0 @ 0.8)
						topLeftOffsets: -1 @ -1
						bottomRightOffsets: 1 @ 1);
				addLeftOrTop: treeMorph;
				addRightOrBottom: textMorph).
	window minimumExtent: 200 @ 300.
	window announcer when: WindowClosed send: #release to: self.
	window open.
	self
		updateTreeKeymap;
		updateTextKeymap;
		updateSelection.
	treeMorph takeKeyboardFocus