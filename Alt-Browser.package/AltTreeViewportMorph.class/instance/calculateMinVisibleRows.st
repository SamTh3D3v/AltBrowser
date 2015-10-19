private
calculateMinVisibleRows
	"Answer the minimal fully visible number of rows to shown in list"

	^ fullyVisibleEndIndex - self owner showIndex + 1