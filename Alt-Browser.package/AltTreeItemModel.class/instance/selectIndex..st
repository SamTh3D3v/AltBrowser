selection
selectIndex: anIndex
	"Sent to the relevant item. Remember that #indexOf: and #at: are expensive operations, so do them only once."

	^ (self at: anIndex ifAbsent: [ self root ]) selectAt: anIndex