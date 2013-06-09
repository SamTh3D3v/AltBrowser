private
localReference
	| class |
	target hasSelector
		ifFalse: [ ^ nil ].
	requestor selectedClass isNil
		ifTrue: [ ^ nil ].
	" look for an instance variable: "
	class := requestor selectedClass whichClassDefinesInstVar: target selector.
	"class isNil
		ifFalse: [ ^ OBInstanceVariableNode on: target selector inClass: class ]."
	" look for a class variable: "
	class := requestor selectedClass whichClassDefinesClassVar: target selector.
	"class isNil
		ifFalse: [ ^ OBClassVariableNode on: target selector inClass: class ]."
	^ nil