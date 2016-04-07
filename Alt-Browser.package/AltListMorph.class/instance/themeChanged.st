accessing-theme
themeChanged
	self color: self backgroundColor.
	self refresh.
	super themeChanged