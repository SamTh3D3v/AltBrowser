printing
asString
	"Try to have a secondary level of hierarchy among classes with a secondary indent added to the name."

	^  (String new: self indent withAll: Character space) , self itemClass asString