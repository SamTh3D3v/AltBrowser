confirmation
selectedClass
	^ environment at: (self nameOfClassDefinedBy: template) ifAbsent: [ environment at: (self nameOfMetaclassDefinedBy: template) ifAbsent: [ nil ] ]