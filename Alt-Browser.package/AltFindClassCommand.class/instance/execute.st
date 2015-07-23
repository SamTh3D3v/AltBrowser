execution
execute
	"Find a class."

	| aClass found |
	aClass := (SearchFacade classSearchIn: (requestor rbEnvironment classesAndTraits sorted: [ :a :b | a name < b name ]))
		chooseFromOwner: target owner.
	aClass isNil
		ifTrue: [ 
			self inform: 'Class search canceled '.
			^ self ].
	AltBrowser rootItems
		do: [ :each | 
			| res |
			(res := each findClass: aClass) notNil
				ifTrue: [ found := res ] ].
	found isNil
		ifTrue: [ 
			self inform: 'Unable to select class ' , aClass name.
			^ self ].
	requestor selectPathForAbstractItem: found