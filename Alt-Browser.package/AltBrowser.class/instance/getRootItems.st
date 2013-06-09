private
getRootItems
	^ self class rootItems collect: [ :e | ABTreeNodeModel with: e model: e ]