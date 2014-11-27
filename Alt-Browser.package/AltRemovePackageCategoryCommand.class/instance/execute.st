execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedNode item.
	item parent removeRPackage: item item.
	AltBrowser aNodeToRebuilt: item parent.
	AltBrowser updateCategories