baseline
baseline01: spec
	<version: '0.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/ThierryGoubier/AltBrowser/main/'.

		spec
			package: 'Alt-Browser'.
		
		spec
			group: 'default' with: #('AltBrowser')
		]