private
projectRegistration
	^ MetacelloProjectRegistration registry
		registrationForExactClassNamed: item
		ifAbsent: [  ]