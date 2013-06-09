ordering
orderClasses: aClassList
	"Order classes according to their superclasses."

	| r addClassBlock |
	addClassBlock := [ :fromList :toList :aClass | 
	(toList includes: aClass)
		ifFalse: [ 
			(fromList includes: aClass superclass)
				ifTrue: [ 
					(toList includes: aClass superclass)
						ifFalse: [ addClassBlock value: fromList value: toList value: aClass superclass ].
					toList add: aClass afterIndex: (toList indexOf: aClass superclass) ]
				ifFalse: [ toList addFirst: aClass ] ] ].
	r := OrderedCollection new.
	aClassList reverseDo: [ :eachClass | addClassBlock value: aClassList value: r value: eachClass ].
	^ r