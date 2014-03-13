ordering
sortClasses: aClassList
	"Order: first the closest to object (in number of superclasses) then alphabetical then in tree mode."

	| sorted currentList remainList |
	currentList := aClassList asArray
		sort: [ :a :b | 
			| s1 s2 |
			s1 := a withAllSuperclasses size.
			s2 := b withAllSuperclasses size.
			s1 < s2 or: [ s1 = s2 and: [ a name < b name ] ] ].
	remainList := OrderedCollection new: currentList size.
	sorted := OrderedCollection new: currentList size.
	currentList
		do: [ :e | 
			(aClassList includes: e superclass)
				ifFalse: [ sorted add: e ]
				ifTrue: [ remainList add: e ] ].
	currentList := remainList reversed.
	[ currentList notEmpty ]
		whileTrue: [ 
			remainList := OrderedCollection new: currentList size.
			currentList
				do: [ :e | 
					(sorted indexOf: e superclass ifAbsent: [  ])
						ifNil: [ remainList add: e ]
						ifNotNil: [ :i | sorted add: e afterIndex: i ] ].
			currentList := remainList ].
	^ sorted