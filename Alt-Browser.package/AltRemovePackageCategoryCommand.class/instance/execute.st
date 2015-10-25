execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedNode item.
	item parent removeRPackage: item item.
	requestor class aNodeToRebuilt: item parent.
	requestor class updateCategories