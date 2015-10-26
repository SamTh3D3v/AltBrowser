private
deltaFor: anIndex
	"Delta measure the distance to the next index...
	verticalValue for i+1 - vecticalValue for i"

	^ (verticalValue - (self verticalValueForIndex: anIndex))
		/ (1.0 / self modelSize)