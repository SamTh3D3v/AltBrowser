accessing
root
	"Get the root item of the tree. Is invisible in the view."

	^ root
		ifNil:
			[ root := (AltCodeItemRootModel on: self class root)
				model: self;
				rbEnvironment: self rbEnvironment;
				yourself.
			root announcer weak
				when: AltSelectionChanged send: #updateSelection to: self;
				when: AltTreeChanged send: #updateSelection to: self.
			root ]