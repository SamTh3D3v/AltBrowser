updating
aClassReorganized: anEvent
	"Ok, a class was reorganised (a new protocol, for example). It seems I need to rebuilt all nodes on that class."

	"This isn't a very good approach: it disturbs too much the GUI state. We need to discover what has really changed and add / or remove nodes as appropriate."
	
	"For now, find out about the eventual protocol changes and propagate them in the class itself, not the extensions, which means we won't see propagated the addition of a package extension category in a class in the package itself. TO CHECK: is RPackage saying the class is extended if the extension protocol is empty ?"

	| node r o |
	o := OrderedCollection new.
	node := self roots
		do: [ :e | 
			(r := e findAllClass: anEvent classReorganized) notNil
				ifTrue: [ o addAll: r ] ].
	(o select: [ :c | c class == ABClassNode ])
		do: [ :each | 
			each contentsOrganization
				do: [ :aProtocol | 
					(anEvent classReorganized organization categories includes: aProtocol)
						ifFalse: [ 
							| oldNode |
							each removeChildItem: (oldNode := each findMethodCategory: aProtocol in: anEvent classReorganized).
							announcer announce: (AltNodeRemoved node: oldNode) ] ].
			anEvent classReorganized organization categories
				do: [ :aProtocol | 
					(each findMethodCategory: aProtocol in: anEvent classReorganized) notNil
						ifFalse: [ 
							| newNode |
							newNode := each addChild: aProtocol.
							announcer announce: (AltNodeAdded node: newNode) ] ] ]