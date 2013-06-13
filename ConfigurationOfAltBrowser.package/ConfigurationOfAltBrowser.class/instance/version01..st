versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline')>
	spec
		for: #common
		do: [ 
			spec
				blessing: #development;
				author: 'ThierryGoubier';
				description: 'First configuration for AltBrowser' ].
	spec for: #'pharo2.0.x' do: [ spec package: 'Alt-Browser' with: 'Alt-Browser-ThierryGoubier.110' ].
	spec for: #'pharo3.0.x' do: [ spec package: 'Alt-Browser' with: 'Alt-Browser-ThierryGoubier.111' ]