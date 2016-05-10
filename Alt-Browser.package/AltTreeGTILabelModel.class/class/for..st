instance creation
for: anObject
	"Return all the GTInspector pragmas from the object."

	| composite |
	composite := GLMCompositePresentation new.
	(((Pragma
		allNamed: GTInspector extensionsPragma
		from: anObject class
		to: Object) reject: [ :e | e selector numArgs ~= 1 ])
		sorted: [ :a :b | a arguments first < b arguments first ])
		do: [ :e | 
			thisContext
				object: anObject
				perform: e selector
				withArguments: (Array with: composite)
				inClass: anObject class ].
	composite presentations logCr.
	^ composite presentations