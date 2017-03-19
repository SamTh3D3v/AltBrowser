combining
+ anotherMotion
	| a |
	a := AltSequenceMotion new.
	a motions
		add: self;
		add: anotherMotion.
	^ a