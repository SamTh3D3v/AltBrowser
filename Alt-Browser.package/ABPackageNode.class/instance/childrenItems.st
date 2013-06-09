private
childrenItems
	"Extract from the organisation the various classes. Protect against the missing class error."

	| c o |
	c := self item classTags.
	o := OrderedCollection new.
	o add: self item.
	c size = 1
		ifTrue: [ c do: [ :e | (self item classesForClassTag: e) do: [ :class | o add: class ] ] ]
		ifFalse: [ o addAll: (c" reject: [ :e | Smalltalk organization isEmptyCategoryNamed: e ]") ].
	^ o