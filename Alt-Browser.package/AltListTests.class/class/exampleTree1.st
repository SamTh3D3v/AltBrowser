examples
exampleTree1
	"AltTreeTests exampleTree1"

	"This is exactly the same example than the FT tree one."

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
	morph := AltListMorph new.
	morph model: tree.
	morph extent: 300 @ 700.
	morph openInWindow.
	^ morph