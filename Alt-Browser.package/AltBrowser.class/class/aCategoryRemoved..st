updating
aCategoryRemoved: anEvent
	"Ok, a class category was removed. What has this become with RPackage ?"

	"Probably: the relevant RPackage doesn't exist anymore, so we can't look for it instance-based. We have to search for the category name instead. "
	
	"The RPackage has been / will be unregistered, we don't have anything to do here."

	self rootItems inject: false into: [ :bool :root | (root aCategoryRemoved: anEvent) or: [ bool ] ]