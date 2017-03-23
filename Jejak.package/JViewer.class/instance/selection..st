actions
selection: anItem
	"We have a selected record item. We need to show the source and select it."

	| r s a i path node m n |
	anItem selectedNodePath isNil
		ifTrue: [ ^ self ].
	super selection: anItem.
	r := anItem.
	path := anItem lastSelectedNodePath.
	node := anItem lastSelectedNode item.
	i := path size.
	r := path last item.
	[ i <= 0 or: [ r isMethod ] ]
		whileFalse: [ i := i - 1.
			r := (path at: i) item ].
	i = 0
		ifTrue: [ ^ self ].
	a := r mclass lookupSelector: r selector.
	a isNil
		ifTrue: [ ^ self ].
	m := JInstrumentedMethods
		at: (Array with: a methodClass with: r selector)
		ifAbsent: [ a ].
	s := m sourceCode.
	n := JCodeNodeFinder find: node nodeId in: m.
	s isNil
		ifTrue: [ ^ self ].
	source contents: s.
	textMorph deselect.
	textMorph
		selectFrom: n sourceInterval first
		to: n sourceInterval last