private
deltaFor: anIndex
	"Delta measure the distance to the next index...
	verticalValue for i+1 - vecticalValue for i"

	^ (self verticalValue
		- ((anIndex - 1) / (self modelSize - 1) asFloat))
		/ (1.0 / self modelSize)