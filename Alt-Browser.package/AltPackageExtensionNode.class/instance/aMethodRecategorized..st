updating
aMethodRecategorized: anEvent
	"Check that we are the right protocol. Don't forget that the underlying class extension could need a rebuilt as well."

	(anEvent newProtocol = self methodCategory or: [ anEvent oldProtocol = self methodCategory ])
		ifTrue: [ 
			(contents notNil and: [ (contents collect: [ :e | e item ]) includes: anEvent methodClass ])
				ifFalse: [ AltBrowser aNodeToRebuilt: self ].
			self contents do: [ :e | e aMethodRecategorized: anEvent ] ]