visiting
visitMessageNode: aMessageNode
	(aMessageNode isCascaded not or: [ aMessageNode isFirstCascaded ])
		ifTrue: [ 
			| rcv |
			rcv := self visitNode: aMessageNode receiver.
			rcv == aMessageNode receiver
				ifFalse: [ aMessageNode receiver: rcv ] ].
	aMessageNode arguments: (aMessageNode arguments collect: [ :each | self visitNode: each ]).
	^ aMessageNode