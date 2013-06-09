private
getRootItems
	"Build the organisation out of some default classification and collect all remaining packages from the list of MCWorkingCopy in the system."

	"There is still some bugs in the packages introduced with the first implementation of RPackage and they show when we build this list."

	| l o |
	l := (MCWorkingCopy allManagers collect: [ :e | e packageSet ]) asOrderedCollection.
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
			i := w -> (OrderedCollection with: p packageName -> p packages).
			o add: i.
			l remove: p.
			(l select: [ :e | (e packageName copyUpTo: $-) = w ])
				do: [ :e | 
					l remove: e.
					i value add: e packageName -> e packages ] ].
	^ o
		collect: [ :e | 
			e value size ~= 1
				ifTrue: [ 
					| s |
					s := e value
						collect: [ :f | 
							f value size ~= 1
								ifTrue: [ f ]
								ifFalse: [ f value first ] ].
					ABPackageCategoryNode with: e key -> s ]
				ifFalse: [ 
					| f |
					f := e value first.
					f value size ~= 1
						ifTrue: [ ABPackageCategoryNode with: f ]
						ifFalse: [ ABPackageNode with: f value first ] ] ]