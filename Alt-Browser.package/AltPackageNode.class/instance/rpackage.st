accessing
rpackage
	"Possible contextualisation here? I know sub RPackageOrganizers are possible, but I don't see the use of it."

	"Note: cache rpackage: fetching the rpackage is costly"
	
	^ rpackage ifNil: [ rpackage := RPackageOrganizer default packageNamed: self packageName ]