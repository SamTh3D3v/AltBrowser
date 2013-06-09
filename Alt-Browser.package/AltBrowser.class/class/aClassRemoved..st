updating
aClassRemoved: anEvent
	"Ok, a class was removed. If this class has extensions, it should be removed from more than one place."

	| node r o |
	o := OrderedCollection new.
	node := self rootItems
		do: [ :e | 
			(r := e findAllClass: anEvent classRemoved) notNil
				ifTrue: [ o addAll: r ] ].
	o
		do: [ :e | self aNodeToRebuilt: e parentNode ]