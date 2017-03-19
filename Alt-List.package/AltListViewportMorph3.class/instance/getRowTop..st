as yet unclassified
getRowTop: rowHeight
	"Major change but significantly simpler overall."

	| i k n |
	n := self modelSize.
	i := self baselineIndex.
	k := ((self verticalValueForIndex: i) - self verticalValue) * n.
	^ rowHeight * k