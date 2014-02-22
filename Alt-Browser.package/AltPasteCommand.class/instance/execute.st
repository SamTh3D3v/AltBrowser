execution
execute
	"Verify that we can paste there."

	AltBrowser temporary
		ifNotNil: [ :dropItem | 
			(requestor selectedNode item acceptDropItem: dropItem)
				ifTrue: [ 
					requestor selectedNode item dropItem: dropItem.
					AltBrowser temporary: nil ] ]