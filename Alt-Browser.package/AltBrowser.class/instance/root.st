accessing
root
	"Get the root item of the tree. Is invisible in the view."

	^ root
		ifNil: [ root := (AltCodeItemRootModel on: self class root)
				model: self;
				rbEnvironment: self rbEnvironment;
				yourself.
			root announcer
				when: AltSelectionChanged send: #updateSelection to: self;
				when: AltListChanged send: #updateSelection to: self.
			root ]