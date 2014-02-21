private
getRootItems
	"Build the organisation out of some default classification and collect all remaining packages from the list of MCWorkingCopy in the system."

	"There is still some bugs in the packages introduced with the first implementation of RPackage and they show when we build this list."

	| l o |
	l := (MCWorkingCopy allManagers collect: [ :e | e packageName asSymbol ]) asOrderedCollection.
	o := OrderedCollection new.
	o addAll: (self defaultPackageCategoriesNames collect: [ :w | self getItemsFor: w from: l ]).
	[ l notEmpty ]
		whileTrue: [ 
			| p w i |
			p := l first.
			w := p copyUpTo: $-.
			i := w -> (OrderedCollection with: p).
			o add: i.
			l remove: p.
			l removeAll: (i value addAll: (l select: [ :e | (e copyUpTo: $-) = w ])) ].
	^ o
		collect: [ :e | 
			e value size ~= 1
				ifTrue: [ AltPackageCategoryNode with: e ]
				ifFalse: [ AltRPackageNode with: e value first ] ]