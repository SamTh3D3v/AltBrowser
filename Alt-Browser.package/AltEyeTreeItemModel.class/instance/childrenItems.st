accessing
childrenItems
	^ (AltEyeInspector inspector: item value) elements
		select: [ :e | e shouldShowInTree ]