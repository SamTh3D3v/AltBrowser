accessing
gtChildrenItems
	"Filtering require the entity to be set in the pane of each presentation. Have to find out how."

	| composite |
	composite := GLMCompositePresentation new.
	composite entity: item value.
	(((Pragma
		allNamed: GTInspector extensionsPragma
		from: item value class
		to: Object) reject: [ :e | e methodSelector numArgs ~= 1 ])
		sorted: [ :a :b | a arguments first < b arguments first ])
		do: [ :e | 
			thisContext
				object: item value
				perform: e methodSelector
				withArguments: (Array with: composite)
				inClass: item value class ].
	^ composite presentations
		select: [ :p | p condition glamourValue: item value ]