versions
version03: spec
	<version: '0.3' imports: #('0.1-baseline')>
	spec
		for: #'pharo2.x'
		do: [ 
			spec
				repository: 'gitfiletree://github.com/ThierryGoubier/AltBrowser.git?protocol=git&branch=pharo2.0';
				blessing: #development;
				author: 'ThierryGoubier';
				description:
						'AltBrowser: a tree-based, simple and advanced system browser / message browser / finder for Pharo 2.0 with smart suggestions, refactoring integration and git integration'. ]