accessing
removeRPackage: aRPackageName
	"Remove a project. Do something special there, because the contents have to be re-added somewhere: removing the configuration removes the project, but, at the same time, leaves behind the packages allocated to the project."

	self item value remove: aRPackageName