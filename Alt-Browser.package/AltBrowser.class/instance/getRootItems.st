private
getRootItems
	^ self class roots collect: [ :e | ABTreeNodeModel with: e model: e ]