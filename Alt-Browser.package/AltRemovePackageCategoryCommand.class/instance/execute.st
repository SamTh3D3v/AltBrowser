execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedNode item.
	item parent removeRPackage: item code.
	AltBrowser aNodeToRebuilt: item parent.
	AltBrowser updateCategories