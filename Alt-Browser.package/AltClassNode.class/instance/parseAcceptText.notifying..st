private
parseAcceptText: aText notifying: aNotifier
	"I'm not sure we will have a need to the notifier here, but, who knows. "
	"Conclusion about the experiment. It's gona be hard!"
	
	"More or less: AddClass does not answer the same protocol for displaying than the RemoveClass refactoring, and both don't have a correct protocol anyway for displaying what is inside. Nautilus has done something, but I'm unsure it's valid. Need to extend RB."
	
	"More. There is no class change refactoring; so I have to scan the new definition element by element to recreate them (and, of course, do a composite which is very difficult to make intelligible in the GUI). The best is maybe to have a Class inspector instead of the text. Oh, and that scanning may be necessary for class additions as well. Need to write a RB to refactoring visitor probably."
	
	"Doing this for methods may be a lot easier."

	| ast |
	ast := RBParser parseExpression: aText.
	ast isMessage
		ifTrue: [ 
			ast selector = #subclass:instanceVariableNames:classVariableNames:poolDictionaries:category:
				ifTrue: [ 
					"This is a subclass creation."
					(Smalltalk at: ast receiver name ifAbsent: [ nil ])
						ifNotNil: [ :global | 
							| subclassName |
							"global is our class here."
							subclassName := ast arguments first value.
							(Smalltalk at: subclassName ifAbsent: [ nil ])
								ifNil: [ 
									(RBAddClassRefactoring
										addClass: subclassName
										superclass: global
										subclasses: #()
										category: ast arguments last value) ]
								ifNotNil: [ :subclass | 
									"We are redefining a subclass. It's a lot
									more complex from there on."
									(RBAddClassChange definition: aText) ] ] ] ]