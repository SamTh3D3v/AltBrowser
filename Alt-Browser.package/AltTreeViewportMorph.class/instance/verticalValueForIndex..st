private
verticalValueForIndex: anIndex
	"Reverse the computation. We're using ceiling, so it's not exactly -1.0..."

	^ (anIndex - 1.0) / self modelSize