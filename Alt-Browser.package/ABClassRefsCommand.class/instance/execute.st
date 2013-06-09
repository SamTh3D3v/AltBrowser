execution
execute
	"Strange, but convenient, to see that systemNavigation is defined for every object."

	| class |
	class := requestor selectedItem item item theNonMetaClass ifNil: [ ^ self ].
	class isTrait
		ifTrue: [ self systemNavigation browseAllUsersOfTrait: class ]
		ifFalse: [ self systemNavigation browseAllCallsOnClass: class ]