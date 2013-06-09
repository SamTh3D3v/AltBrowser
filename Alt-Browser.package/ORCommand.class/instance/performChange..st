private
performChange: aChange
	self waitWhile: [
		RBRefactoryChangeManager instance
			performChange: aChange.
		self refreshChange: aChange ]