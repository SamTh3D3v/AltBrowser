gui building
buildSearchModeToolBar: aWindow
	^ toolbar := aWindow
		newToolbar:
			{(self buildSearchingTextArea).
			(self buildSearchButton).
			(self buildRegExChooser).
			(self buildSearchModeDropListIn: aWindow)}