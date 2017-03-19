accessing
drawSubmorphsOn: aCanvas
	| drawBlock |
	submorphs isEmpty
		ifTrue: [ ^ self ].
	self owner motion ifNotNil: [ :aMotion | aMotion value ].
	drawBlock := [ :canvas | submorphs reverseDo: [ :m | canvas fullDrawMorph: m ] ].
	aCanvas
		clipBy: (aCanvas clipRect intersect: self clippingBounds ifNone: [ ^ self ])
		during: drawBlock