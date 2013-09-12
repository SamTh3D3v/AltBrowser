versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline')>
	spec
		for: #common
		do: [ 
			spec
				blessing: #development;
				author: 'ThierryGoubier';
				description: 'AltBrowser: a tree-based, simple and advanced system browser for Pharo 2.0 with smart suggestions, refactoring integration and git integration.'.
			spec package: 'Alt-Browser' with: 'Alt-Browser-ThierryGoubier.164' ]