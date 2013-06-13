versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline')>
	spec
		for: #common
		do: [ 
			spec
				blessing: #development;
				author: 'ThierryGoubier';
				description: 'AltBrowser for Pharo 2.0 (stable)'.
			spec package: 'Alt-Browser' with: 'Alt-Browser-ThierryGoubier.120' ]