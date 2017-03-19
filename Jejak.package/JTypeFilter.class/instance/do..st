accessing
do: aRV
	"Iterate starting at a RV."

	| aClass |
	aClass := SearchFacade classSearch chooseFromOwner: World.
	aClass notNil ifFalse: [^self].
	self setType: aClass.
	super do: aRV.
	^true