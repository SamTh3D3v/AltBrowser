private
trimmedCategoryName
	"Remove version like numbers at the end of the category name for matching purposes."

	^ self categoryName trimRight: [ :char | #($0 $1 $2 $3 $4 $5 $6 $7 $8 $9 $.) includes: char ]