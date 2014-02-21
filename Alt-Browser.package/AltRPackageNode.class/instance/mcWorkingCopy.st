accessing
mcWorkingCopy
	"Get the MCWorkingCopy associated with this node. We can expect the direct access to the registry to be faster than doing a detect over all managers."

	^ MCWorkingCopy registry at: (MCPackage named: self packageName)