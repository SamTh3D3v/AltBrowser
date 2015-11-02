accessing
root
	"We may have to filter the roots here; by default all the roots will be shown. And it's not possible to filter them in the GUI."

	"If they are filtered here, is it possible to re-add them when appropriate?"

	^ root
		ifNil:
			[ root := (AltCodeItemRootModel on: self class root)
				model: self;
				rbEnvironment: self rbEnvironment;
				yourself ]