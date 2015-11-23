examples
exampleTree1
	"AltTreeTests new exampleTree1"

	| tree morph |
	tree := AltBlockItemExample new.
	tree
		contents:
			(((ProtoObject allSubclasses
				reject: [ :e | e name endsWith: 'class' ])
				sort: [ :a :b | a name < b name ])
				collect:
					[ :e | 
					AltBlockItemExample new
						item: e;
						parent: tree;
						childrenBlock: [ :c | c subclasses sort: [ :a :b | a name < b name ] ] ]).
	morph := AltTreeMorph new.
	morph model: tree.
	morph extent: 300 @ 1000.
	morph openInWindow.
	^ morph