private
getRootItems
	"This is where I should rework the organisation. Use broad package classes listed in defaultPackageCategories to reduce the number of top-level items, then sort them in alphabetical order to make sure _UnpackagedPackage at the end of the list. I'm sure using another sort criteria could be better, as the order in which the package appear in the system, but I believe RPackageOrganizer does not keep track of that, whereas Smalltalk organization does."

	| l o |
	l := RPackageOrganizer default packages asOrderedCollection.
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
	^ (SortedCollection sortBlock: [ :a :b | a asString < b asString ])
		addAll:
				(o
						collect: [ :e | 
							e value size ~= 1
								ifTrue: [ ABPackageCategoryNode with: e ]
								ifFalse: [ ABPackageNode with: e value first ] ]);
		asOrderedCollection