accessing
project
	^ project
		ifNil: [ 
			| constructor |
				"Bootstrap Metacello if it is not already loaded"
			(self class baseConfigurationClassIfAbsent: [  ]) ensureMetacello.
				"Load gitfiletree support if not already loaded."
			Smalltalk
				at: #MCFileTreeRepository
				ifAbsent: [ 
					Gofer new
						url: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main';
						configurationOf: 'GitFileTree';
						loadDevelopment ].
				"Construct Metacello project"
			project := MetacelloMCProject new projectAttributes: self customProjectAttributes.
			constructor := (Smalltalk at: #MetacelloVersionConstructor) on: self project: project.
			project loadType: #linear.	"change to #atomic if desired"
			project ]