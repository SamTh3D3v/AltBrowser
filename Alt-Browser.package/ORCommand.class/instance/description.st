accessing
description
	^ String streamContents: [ :stream |
		self cluster isNil
			ifFalse: [ stream nextPutAll: self cluster; nextPutAll: ', ' ].
		stream nextPutAll: self label ]