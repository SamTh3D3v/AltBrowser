drawing
fullDrawOn: aCanvas
	"Remember temporarily the canvas to avoid regenerating damage rectangles.
	The row building process generates damage events, as well as playing with the
	scrollbar: just make sure we catch them when displaying (see 
	[AltListViewportMorph>>#invalidRect:from:])."

	canvas := aCanvas.
	[ super fullDrawOn: aCanvas ]
		ensure: [ canvas := nil ]