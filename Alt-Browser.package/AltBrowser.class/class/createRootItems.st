private
createRootItems
	"Build the organisation out of some classification and collect all remaining packages from the list of MCWorkingCopy in the system."

	| convertBlock |
	convertBlock := [ :entry | 
	entry isArray
		ifFalse: [ entry -> OrderedCollection new ]
		ifTrue: [ entry first
				->
					(entry allButFirst collect: [ :e | convertBlock value: e ])
						asOrderedCollection ] ].
	Root := AltRootNode
		with:
			#root
				->
					((self categories collect: [ :e | convertBlock value: e ])
						, {RPackage defaultPackageName}) asOrderedCollection.
	self allBaselinesAndConfigurations
		do: [ :e | 
			self
				aMCWorkingCopyCreated:
					(MCWorkingCopyCreated
						workingCopy: e
						package: (MCPackage named: e packageName)) ].
	MCWorkingCopy allManagers
		do: [ :e | 
			self
				aMCWorkingCopyCreated:
					(MCWorkingCopyCreated
						workingCopy: e
						package: (MCPackage named: e packageName)) ].
	self aRecentPackagesReset