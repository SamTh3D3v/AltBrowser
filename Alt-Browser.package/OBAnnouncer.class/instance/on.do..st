subscription
on: aClass do: aValuable 
	| actions |
	actions := subscriptions 
		at: aClass
		ifAbsent: [ WeakActionSequence new ].
	subscriptions 
		at: aClass
		put: (actions copyWith: aValuable)