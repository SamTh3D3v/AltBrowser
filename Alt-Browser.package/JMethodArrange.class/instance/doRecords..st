enumerating-private
doRecords: records 
	"Fuse message send events and method entry, if appropriate."

	| rcs plv |
	rcs := super doRecords: records.
	plv := nil.
	rcs
		linksDo: 
			[:lv | | r |
			r := lv value.
			(plv notNil and: [plv value isMethod and: [plv value selector == r selector]])
				ifTrue: 
					[rcs remove: plv value.
					r children addFirst: plv].
			plv := lv].
	^rcs