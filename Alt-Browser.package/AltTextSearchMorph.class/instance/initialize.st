initialization
initialize
	"Initialize the receiver.  Give it a white background"

	super initialize.
	self backgroundColor: (self theme backgroundColor alpha: 0.5).
	self color: Color red.
	self addDropShadow