geometry
baselineIndex
	^ (self verticalValue * self modelSize) truncated + 1
		min: self modelSize