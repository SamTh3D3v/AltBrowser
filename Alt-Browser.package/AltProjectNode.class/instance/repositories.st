accessing
repositories
	^ (self contents first mcWorkingCopy repositoryGroup repositories
		reject: [ :e | e == MCCacheRepository uniqueInstance ])
		collect: [ :e | e location ]