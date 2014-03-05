baseline
baseline01: spec
	<version: '0.1-baseline'>
	spec
		for: #common
		do: [ 
			self class ensureGitFileTree.
			spec blessing: #baseline.
			spec package: 'Alt-Browser'.
			spec group: 'default' with: #('Alt-Browser') ]