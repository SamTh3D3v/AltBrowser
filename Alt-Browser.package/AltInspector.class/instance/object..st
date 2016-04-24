accessing
object: anObject
	object := anObject.
	object model: self.
	object announcer
		when: AltSelectionChanged send: #updateSelection to: self;
		when: AltListChanged send: #updateSelection to: self