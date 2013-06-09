private
superclassProtocolFor: aSelector in: aClass
	aClass allSuperclassesDo: [ :class |
		| protocol |
		protocol := class organization categoryOfElement: aSelector.
		(self isValidProtocol: protocol) 
			ifTrue: [ ^ protocol ].
		class theNonMetaClass = ProtoObject
			ifTrue: [ ^ nil ] ].
	^ nil