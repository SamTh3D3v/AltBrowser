private
createRootItems
	"Build the organisation out of some classification and collect all remaining packages from the list of MCWorkingCopy in the system."

	Root := AltRootNode
		with:
			#root
				->
					((self categories
						collect: [ :e | e first -> (e allButFirst collect: [ :f | f -> OrderedCollection new ]) asOrderedCollection ])
						, {(RPackage defaultPackageName)}) asOrderedCollection.
	MCWorkingCopy allManagers
		do: [ :e | self aMCWorkingCopyCreated: (MCWorkingCopyCreated workingCopy: e package: (MCPackage named: e packageName)) ].
	self aRecentPackagesReset