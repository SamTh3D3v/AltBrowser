querying
isInRBEnvironment: aRBEnvironment
	"Use the category name, not the tag name."

	^ aRBEnvironment includesCategory: self item categoryName