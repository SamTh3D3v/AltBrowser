accessing
contents: anArrayOfObjects
	"When contents are added, set the parent link as well."

	contents := anArrayOfObjects.
	anArrayOfObjects do: [ :e | e parent: self ].
	^ contents