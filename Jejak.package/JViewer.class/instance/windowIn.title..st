ui
windowIn: aWindow title: aTitle
	| window treeMorph toolbar dock pane inside |
	window := self theme newWindowIn: aWindow for: self title: aTitle.
	toolbar := window
		newToolbar:
			{(window
				newButtonFor: self
				action: #resetRecorder
				label: 'Erase events'
				help: 'Erase all recorded events').
			(window
				newButtonFor: self
				action: #uninstall
				label: 'Remove probes'
				help: 'Erase all probes, restore original code').
			(window
				newButtonFor: self
				action: #update
				label: 'Update'
				help: 'Update the list of events')}.
	treeMorph := self defaultTreeMorph.
	treeMorph buildContents.
	dock := window newToolDockingBar.
	dock addMorphBack: toolbar.
	inside := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeTableLayout;
		cellInset: 0;
		cellPositioning: #leftCenter;
		yourself.	"non pane color tracking"
	pane := Morph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent;
		changeProportionalLayout;
		yourself.	"non pane color tracking"
	pane addMorph: treeMorph fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.3 @ 1) offsets: (0 @ 0 corner: -2 @ 0)).
	textMorph := PluggableTextMorph on: self source text: #contents accept: nil.
	pane
		addMorph:
			(ProportionalSplitterMorph new
				addLeftOrTop: treeMorph;
				addRightOrBottom: textMorph)
		fullFrame: (LayoutFrame fractions: (0.3 @ 0.0 corner: 0.3 @ 1) offsets: (-2 @ 0 corner: 2 @ 0)).
	pane addMorph: textMorph fullFrame: (LayoutFrame fractions: (0.3 @ 0 corner: 1 @ 1) offsets: (2 @ 0 corner: 0 @ 0)).
	window addMorph: inside frame: (0 @ 0 corner: 1 @ 1).
	inside addMorph: pane fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (0 @ 0 corner: 0 @ 0)).
	inside addMorph: dock.
	window minimumExtent: 500 @ 500.
	^ window