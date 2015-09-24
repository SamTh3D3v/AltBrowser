initialization
initializeOn: rowMorph color: aColor
	self initialize.
	self color: aColor.
	self bounds: rowMorph bounds.
	self addMorph: rowMorph.
	"Forcing color of rowMorph as transparent because it might be setted with some other 
	 color in definition"
	rowMorph color: Color transparent.
	rowMorph submorphsDo: [ :each | each color: Color transparent ]