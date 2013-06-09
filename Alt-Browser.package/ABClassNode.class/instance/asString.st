printing
asString
	^ self item isMeta
		ifTrue: [ '- Class' ]
		ifFalse: [ (String new: self indent withAll: Character space) , self item asString ]