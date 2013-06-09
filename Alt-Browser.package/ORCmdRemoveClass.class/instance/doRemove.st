private
doRemove
	RBRefactoryChangeManager instance
		performChange: (RBRemoveClassChange 
			remove: target theNonMetaClass).
	requestor announce: (OBNodeDeleted node: target)