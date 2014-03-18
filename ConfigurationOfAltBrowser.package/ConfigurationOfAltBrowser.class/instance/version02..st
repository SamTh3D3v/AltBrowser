versions
version02: spec
	<version: '0.2' imports: #('0.1-baseline')>
	spec
		for: #'pharo3.x'
		do: [ 
			spec
				repository: 'github://ThierryGoubier/AltBrowser:pharo3.0';
				blessing: #stable;
				author: 'ThierryGoubier';
				description:
						'AltBrowser: a tree-based, simple and advanced system browser / message browser / finder for Pharo 3.0 with smart suggestions, refactoring integration and git integration'.
			spec package: 'Alt-Browser' with: 'Alt-Browser-ThierryGoubier.256' ]