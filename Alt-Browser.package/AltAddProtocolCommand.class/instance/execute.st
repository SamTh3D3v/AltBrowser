execution
execute
	"Reuse code from Browser>>addCategory"

	"Present a choice of categories or prompt for a new category name and add it before the current selection, or at the end if no current selection"

	"Usability comment : far too many choices in most cases to be user-friendly."

	| labels reject lines oldIndex newName tClass sItem |
	requestor okToChange
		ifFalse: [ ^ self ].
	labels := OrderedCollection new.
	sItem := requestor selectedNode.
	tClass := sItem sourceClass.
	reject := Set new.
	reject
		addAll: tClass organization categories;
		add: ClassOrganizer nullCategory;
		add: ClassOrganizer default.
	lines := OrderedCollection new.
	tClass allSuperclasses
		do: [ :cls | 
			| cats |
			cls = Object
				ifFalse: [ 
					cats := cls organization categories reject: [ :cat | reject includes: cat ].
					(cats isEmpty or: [ reject size > 10 ])
						ifFalse: [ 
							lines add: labels size.
							labels addAll: cats asSortedCollection.
							reject addAll: cats ] ] ].
	newName := UIManager default chooseOrRequestFrom: labels lines: lines title: 'Add Category'.
	newName ifNil: [ ^ self ].
	newName := newName asSymbol.
	tClass
		addCategory: newName
		before:
			((sItem item isKindOf: AltMethodCategoryNode)
				ifTrue: [ sItem item item ]
				ifFalse: [ nil ]).
	requestor selectPathForAbstractItem: (sItem parentNode findItem: (sItem parentNode item findMethodCategory: newName in: tClass)) item