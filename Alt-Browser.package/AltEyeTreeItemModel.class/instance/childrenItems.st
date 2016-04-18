accessing
childrenItems
	^ (EyeInspector inspector: item value) elements
		select: [ :e | e shouldShowInTree ]