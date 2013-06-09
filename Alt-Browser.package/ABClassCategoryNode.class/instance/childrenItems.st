private
childrenItems
	"Extract from the organisation the various classes. Ok. Our upper level should try to built a hierarchy with the category name, if applicable (via various upTo: $-). This code is ready for that (introduce an additional hierarchy)."

	"We use Smalltalk organisation for that, not Rpackage stuff, and they may diverge (they do)."

	| c o r addClassBlock |
	c := Smalltalk organization categoriesMatching: self item.
	c size > 2
		ifTrue: [ ^ c ]
		ifFalse: [ ^ self class orderClasses: (Smalltalk organization classesInCategory: c first) ]