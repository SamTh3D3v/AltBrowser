pages
notes
	^ HelpTopic
		title: 'Notes'
		contents:
'Issues:
	RPackage behavior: when loading a MCPackage, it will create a RPackage anyway with the name of the MCPackage, even if no class category is created by this MCPackage. At the moment, this means on a Reset an additional node is created, i.e. the one for the RPackage, but its not created when loading the MCPackage. Given the state of things, we will leave it as it is. Nautilus behavior on that is incoherent too: a MCPackage is either considered as a MCPackage or as a combination of a RPackage and a MCPackage.
	Bug: The RPackage creation is not seen and listed. Its not really a bug, but the shortcut of a RPackage to a single category. Maybe we could consider a unified view of a MCPackage where the RPackage of the same name is allways listed as top-level, including the classes it may contains.'
		