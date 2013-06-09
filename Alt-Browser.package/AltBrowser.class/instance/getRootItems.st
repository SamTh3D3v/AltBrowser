private
getRootItems
	^ self class rootItems contents collect: [ :e | ABTreeNodeModel with: e model: e ]