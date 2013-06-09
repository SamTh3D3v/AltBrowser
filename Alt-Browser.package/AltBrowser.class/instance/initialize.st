initialization
initialize
	super initialize.
	self class rootItems whenChangedSend: #reset to: self.
	self class announcer weak
		on: AltNodeRebuilt send: #rebuiltNode: to: self;
		on: AltNodeRemoved send: #removeNode: to: self;
		on: AltNodeAdded send: #addNode: to: self