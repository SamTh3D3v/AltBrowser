printing
asString
	"Try to have a secondary level of hierarchy among classes with a secondary indent added to the name. And, when on a meta class (class side), use the full name so that I can strip the class name from the parent (Oups, this could turn out as a bug when a class name starts with the package name. Now that shows that I should probably have a subclass for the class side instead of spreading liberal doses of isMeta)."

	^ self item isMeta
		ifTrue: [ ^ '- Class' ]
		ifFalse: [ (String new: self indent withAll: Character space) , self item asString ]