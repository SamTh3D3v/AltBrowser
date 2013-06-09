private
doRemove
	RBRefactoryChangeManager instance
		performChange: (RBRemoveMethodChange 
			remove: target selector from: target theClass).
	requestor announce: (OBNodeDeleted node: target)