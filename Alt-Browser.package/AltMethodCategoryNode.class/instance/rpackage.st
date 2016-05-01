accessing
rpackage
	"Get the package name."

	^ RPackageOrganizer default
		packageForProtocol: self methodCategory
		inClass: self parent itemClass