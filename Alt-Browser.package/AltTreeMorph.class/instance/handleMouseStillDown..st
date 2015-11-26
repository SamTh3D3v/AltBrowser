event handling
handleMouseStillDown: anEvent
	"Reimplemented because we really want #mouseMove when a morph is dragged around"

	^ super handleMouseStillDown: anEvent