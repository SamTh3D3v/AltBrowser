examples
exampleTree3
	"AltListTests exampleTree3"

	"This one is a variant where changed is handled normally, not during drawOn: like FT does. It is slower to open, since it does at least two updates (one initial refresh and one changed). Apart from that, it is as fast as the other one."

	"Animation behavior may be a bit different / broken: it is used for experiments."

	<example>
	| tree morph |
	tree := AltBlockItemExample new.
	tree
		contents:
			(((ProtoObject allSubclasses reject: [ :e | e name endsWith: 'class' ])
				sort: [ :a :b | a name < b name ])
				collect:
					[ :e | 
					AltBlockItemExample new
						item: e;
						parent: tree;
						childrenBlock: [ :c | c subclasses sort: [ :a :b | a name < b name ] ] ]).
	morph := AltListMorph3 new.
	morph extent: 300 @ 700.
	morph model: tree.
	morph openInWindow.
	^ morph