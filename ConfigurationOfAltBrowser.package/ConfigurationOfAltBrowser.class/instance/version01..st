versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline')>
	spec
		for: #'pharo2.x'
		do: [ 
			spec
				blessing: #stable;
				author: 'ThierryGoubier';
				repository: 'gitfiletree://github.com/ThierryGoubier/AltBrowser.git?protocol=git&branch=pharo2.0&readOnly=1';
				description:
						'AltBrowser: a tree-based, simple and advanced system browser / message list / finder for Pharo 2.0 with smart suggestions, refactoring integration and git integration.'.
			spec package: 'Alt-Browser' with: 'Alt-Browser-ThierryGoubier.1' ]