private
deltaFor: anIndex
	"Delta measure the distance to the next index...
	verticalValue for i+1 - vecticalValue for i"

	^ (self verticalValue - ((anIndex - 1) / self modelSize) asFloat)
		/ (1.0 / self modelSize)