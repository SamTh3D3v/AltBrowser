private
projectRegistration
	^ MetacelloProjectRegistration registry
		registrationForExactClassNamed: item key
		ifAbsent: [  ]