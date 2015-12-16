drawing
fullDrawOn: aCanvas
	canvas := aCanvas.
	[ super fullDrawOn: aCanvas ]
		ensure: [ canvas := nil ]