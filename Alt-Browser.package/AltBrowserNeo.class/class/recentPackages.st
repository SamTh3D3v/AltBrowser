accessing
recentPackages
	^ RecentPackages ifNil: [ RecentPackages := OrderedCollection new ]