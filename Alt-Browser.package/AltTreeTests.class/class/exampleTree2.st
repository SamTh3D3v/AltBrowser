examples
exampleTree2
	"AltTreeTests exampleTree2"

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
	morph := AltTreeMorph2 new.
	morph extent: 300 @ 700.
	morph model: tree.
	morph openInWindow.
	^ morph