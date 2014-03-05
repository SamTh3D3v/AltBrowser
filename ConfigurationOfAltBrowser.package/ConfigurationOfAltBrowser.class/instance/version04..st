versions
version04: spec
	<version: '0.4' imports: #('0.1-baseline')>
	spec
		for: #'pharo3.x'
		do: [ 
			spec
				repository: 'gitfiletree://github.com/ThierryGoubier/AltBrowser.git?protocol=git&branch=pharo3.0';
				blessing: #development;
				author: 'ThierryGoubier';
				description:
						'AltBrowser: a tree-based, simple and advanced system browser / message browser / finder for Pharo 3.0 with smart suggestions, refactoring integration and git integration'. ]