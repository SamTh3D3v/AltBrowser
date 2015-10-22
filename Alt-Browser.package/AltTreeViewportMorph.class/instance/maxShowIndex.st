accessing
maxShowIndex
	maxShowIndex
		ifNil:
			[ ^ self owner model size
				- (endIndex - self owner showIndex - 1) ].
	^ maxShowIndex