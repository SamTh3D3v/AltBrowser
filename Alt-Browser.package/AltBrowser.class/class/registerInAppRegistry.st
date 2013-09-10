initialization
registerInAppRegistry
	"Register the receiver in the SystemBrowser AppRegistry"

	SystemBrowser register: self.
	Smalltalk tools register: self as: #messageList