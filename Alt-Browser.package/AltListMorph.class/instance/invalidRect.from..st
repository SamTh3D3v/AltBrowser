drawing
invalidRect: aRect from: aMorph
	"Intercept all invalidRects from submorphs while in a drawing session."

	canvas ifNil: [ super invalidRect: aRect from: aMorph ]