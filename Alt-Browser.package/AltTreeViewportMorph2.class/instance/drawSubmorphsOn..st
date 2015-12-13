accessing
drawSubmorphsOn: aCanvas
	| drawBlock |
	submorphs isEmpty
		ifTrue: [ ^ self ].
	drawBlock := [ :canvas | submorphs reverseDo: [ :m | canvas fullDrawMorph: m ] ].
	self clipSubmorphs
		ifTrue:
			[ aCanvas
				clipBy: (aCanvas clipRect intersect: self clippingBounds ifNone: [ ^ self ])
				during: drawBlock ]
		ifFalse: [ drawBlock value: aCanvas ]