private-scrollbars
hasHorizontalScrollBar
	^ self viewport in: [ :v | v effectiveWidth > v width ]