visiting
visitCascadeNode: aCascadeNode
	aCascadeNode messages: (aCascadeNode messages collect: [ :message | self visitNode: message ]).
	^ aCascadeNode