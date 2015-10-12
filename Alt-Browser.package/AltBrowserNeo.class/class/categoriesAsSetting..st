settings
categoriesAsSetting: aString
	"Loading the settings with open browsers force a reset, which isn't nice."

	Categories ifNotNil: [ ^ self ].
	self categories: (self compiler evaluate: aString)