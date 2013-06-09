subscription
on: aClass send: aSelector to: anObject
	self
		on: aClass
		do: (MessageSend receiver: anObject selector: aSelector)