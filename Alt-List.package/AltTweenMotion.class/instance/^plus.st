combining
+ anotherMotion
	"Add another motion as a sequence. Merging works a bit differently."

	| a |
	a := AltSequenceMotion new.
	a motions
		add: self;
		add: anotherMotion.
	^ a