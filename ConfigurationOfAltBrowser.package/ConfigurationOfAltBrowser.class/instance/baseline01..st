baseline
baseline01: spec
	<version: '0.1-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'gitfiletree://github.com/ThierryGoubier/AltBrowser.git?protocol=git'.
			spec package: 'Alt-Browser'.
			spec group: 'default' with: #('Alt-Browser') ]