accessing
methodCategory
	"A class extension is below a package extension node, hence we can ask the parent for the right category prefix."

	^ self rpackage methodCategoryPrefix