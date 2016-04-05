private
getRowTop: rowHeight
	"Major change but significantly simpler overall."

	| i k xTop xBottom n |
	n := self modelSize.
	i := self baselineIndex.
	xTop := (i - 1) / n * self height.
	xBottom := i / n * self height.
	k := (self verticalValue - (self verticalValueForIndex: i)) * n.
	^ xTop + ((xBottom - xTop - rowHeight) * k)