private
getRootItems
	"Build the organisation out of some classification and collect all remaining packages from the list of MCWorkingCopy in the system."

	| l o roots |
	l := (MCWorkingCopy allManagers collect: [ :e | e packageName asSymbol ]) asOrderedCollection.
	o := OrderedCollection new.
	o addAll: (self categories collect: [ :w | self getItemsFor: w from: l ]).
	[ l notEmpty ]
		whileTrue: [ 
			| p w i |
			p := l first.
			w := p copyUpTo: $-.
			i := w -> (OrderedCollection with: p).
			o add: i.
			l remove: p.
			l removeAll: (i value addAll: (l select: [ :e | (e copyUpTo: $-) = w ])) ].
	roots := o
		collect: [ :e | 
			e value size ~= 1
				ifTrue: [ e ]
				ifFalse: [ e value first ] ].
	^ roots