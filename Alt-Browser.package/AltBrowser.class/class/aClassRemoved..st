updating
aClassRemoved: anEvent
	"Ok, a class was removed. If this class has extensions, it should be removed from more than one place."

	| node r o |
	o := OrderedCollection new.
	node := self roots
		do: [ :e | 
			(r := e findAllClass: anEvent classRemoved) notNil
				ifTrue: [ o addAll: r ] ].
	o
		do: [ :e | 
			e parentNode contents remove: e.
			announcer announce: (AltNodeRemoved node: e) ]