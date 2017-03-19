geometry
getRowTop: rowHeight
	"Major change but significantly simpler overall."

	| i k xTop xBottom n |
	n := self modelSize.
	i := self baselineIndex.
	xTop := (i - 1) / n * self height.
	xBottom := i / n * self height.
	k := (self verticalValue - ((i - 1) / n)) * n.
	^ (xTop + (xBottom - xTop - rowHeight)) * k