actions
accept: aText notifying: aController
	"This should change the class comment"
	
	"I have a problem there: the Class comment node is recreated on update and therefore the system loses the focus."

	self item comment: aText.
	^ self