geometry
invalidRect: aRect from: aMorph
	"Intercept all invalidRects from submorphs while in a drawing session."

	(canvas isNil or: [ canvas isVisible: aRect ])
		ifTrue: [ ^ super invalidRect: aRect from: aMorph ]