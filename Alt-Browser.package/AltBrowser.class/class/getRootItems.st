private
getRootItems
	"This is where I should rework the organisation. Use broad classes to reduce the number of top-level items. To be improved. Does not catch classes which have no packages."

	| l o |
	l := MCWorkingCopy allManagers asOrderedCollection.
	o := OrderedCollection new.
	self defaultPackageCategoriesNames
		do: [ :w | 
			| i |
			i := self getItemsFor: w from: l.
			o add: i ].
	[ l notEmpty ]
		whileTrue: [ 
			| p w i |
			p := l first.
			w := p packageName copyUpTo: $-.
			i := w -> (OrderedCollection with: p).
			o add: i.
			l remove: p.
			(l select: [ :e | (e packageName copyUpTo: $-) = w ])
				do: [ :e | 
					l remove: e.
					i value add: e ] ].
	^ o collect: [ :e | ABPackageCategoryNode with: e ]