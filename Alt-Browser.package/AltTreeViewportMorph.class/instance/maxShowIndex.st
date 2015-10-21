accessing
maxShowIndex
	maxShowIndex
		ifNil:
			[ ^ self owner model size
				- (fullyVisibleEndIndex - self owner showIndex - 1) ].
	^ maxShowIndex