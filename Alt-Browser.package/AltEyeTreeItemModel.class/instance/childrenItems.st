accessing
childrenItems
	^ (EyeInspector inspector: item) elements
		select: [ :e | e shouldShowInTree ]