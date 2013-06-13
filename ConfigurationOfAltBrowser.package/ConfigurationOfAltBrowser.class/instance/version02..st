versions
version02: spec
	<version: '0.2' imports: #('0.1-baseline')>
	spec
		for: #common
		do: [ 
			spec
				blessing: #development;
				author: 'ThierryGoubier';
				description: 'AltBrowser for Pharo 3.0'.
			spec package: 'Alt-Browser' with: 'Alt-Browser-ThierryGoubier.117' ]