enumerating-private
doRecords: records
	^records collect: [:n | self doRecord: n]