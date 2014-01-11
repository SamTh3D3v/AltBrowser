printing
asString
	^ self item isMeta
		ifTrue: [ self item baseClass name, ' - Class' ]
		ifFalse: [ (String new: self indent withAll: Character space) , self item asString ]