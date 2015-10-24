private-scrollbars
rowIndexToVerticalScrollBarValue: aRowIndex
	^ (aRowIndex - 1) asFloat / (self model size - 1)