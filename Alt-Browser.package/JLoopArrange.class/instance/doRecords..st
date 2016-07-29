enumerating-private
doRecords: records 
	"Fuse blocks indications into the loop structure. Should probably be able to track even blocks defined as variables."

	"Algorithme:
		first iterate through the records.
		if the child is a message send (a RecordItem), then
			if the previous record is a block, then it was an iteration of a loop message. So move it as a child of the message (removing it from the records).
			Continue backwards and repeat until we find something else than a block.
	Scope:
		seems to work on any message send which has a block as parameter, so including ifTrue:ifFalse: and whileTrue:

	Example:
		if the record structure is
		+-- []
		+-- []
		+-- #to:do:
		Then the two blocks are iterations of the #to:do: and the result will be rewritten as:
		+-- #to:do:
		     +-- []
		     +-- []."

	| r rc tps |
	rc := super doRecords: records.
	tps := OrderedCollection new.
	rc do: 
			[:lv | 
			"This loop searches for message sends; such a message may be a loop construct."

			r := lv value.
			(r isKindOf: JRecordItem) 
				ifTrue: 
					[tps reverseDo: 
							[:i | 
							rc remove: i.
							r children addFirst: i]].
			(r isKindOf: JRecordBlock) 
				ifTrue: [tps add: lv]
				ifFalse: [tps isEmpty ifFalse: [tps := OrderedCollection new]]].
	^rc